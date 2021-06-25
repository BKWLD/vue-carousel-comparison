<!-- vue-agile carousel demo -->

<template lang='pug'>

.page
	h1 vue-agile-carousel

	h2 Full width slides
	p 6 slides.  18 child components (Renders each slide 3 times)
	agile
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num')
		
		template(slot="prevButton") Next			
		template(slot="nextButton") Prev

	h2 Multiple slides per viewport with peeking
	p 6 slides.  18 child components (Renders each slide 3 times)

	agile(:slides-to-show='3')
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num')
		
		template(slot="prevButton") Next			
		template(slot="nextButton") Prev

	h2 Less slides than pagination
	p 1 slide.  3 child components (Renders the slide 3 times)

	agile(:slides-to-show='3')
		div(v-for='num in 1' :key='num' :num='num')
			visual-slide(:num='num')
		
		template(slot="prevButton") Next			
		template(slot="nextButton") Prev

	h2 Variable aspect slides
	p 6 slides.  18 child components (Renders each slide 3 times)

	agile(:slides-to-show='3')
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num' variable-width)
		
		template(slot="prevButton") Next			
		template(slot="nextButton") Prev

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import Agile from 'vue-agile/src/Agile.vue'

export default
	components: { Agile }

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

// Basic VueAgile styles
.agile
	width 100%

	&__actions
		margin-top 20px

	&__nav-button
		background transparent
		border none
		color #ccc
		cursor pointer
		font-size 24px
		transition-duration .3s

		&hover
			color #888

	&__dot
		margin 0 10px

		button 
			background-color #eee
			border none
			border-radius 50%
			cursor pointer
			display block
			height 10px
			font-size 0
			line-height 0
			margin 0
			padding 0
			transition-duration .3s
			width 10px

		&--current,
		&hover
			button
				background-color #888


</style>
