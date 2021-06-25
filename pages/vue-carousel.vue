<!-- 
	vue-carousel carousel demo 
	https://github.com/SSENSE/vue-carousel
-->

<template lang='pug'>

.page
	h1 vue-carousel

	h2 Full width slides

	carousel(
		:per-page='1' 
		mouse-drag
		navigationEnabled
		)
		
		slide(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num')

	h2 Multiple slides per viewport
	carousel(
		mouse-drag
		navigationEnabled
		:perPageCustom='[[400, 1], [600, 2], [800, 3]]')
		
		slide(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num')


	h2 Less slides than pagination
	carousel(
		navigationEnabled
		:perPage='3')
		slide(v-for='num in 1' :key='num' :num='num')
			visual-slide(:num='num')


	h2 Variable Width
	carousel(
		mouse-drag
		navigationEnabled
		:perPage='3'
		scrollPerPage)

		slide(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num' variable-width)




</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import { VueCarousel, Carousel, Slide } from 'vue-carousel'
export default

	components: { VueCarousel, Carousel, Slide }

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

// Make images draggable
.visual-slide
	pointer-events none

// Make the dots color
>>> .VueCarousel-navigation
	position absolute
	top calc(50% - 30px)
	width 100%
	left 0

	.VueCarousel-navigation-button
		color pink

	.VueCarousel-navigation-prev
		left 5px

	.VueCarousel-navigation-next
		right 5px

>>> 
	.VueCarousel-dot
		transition transform .2s ease-out

	.VueCarousel-dot--active
		transform scale(1.5)
		background-color pink !important

.peek-wrap
	overflow hidden

.peek
	width calc(100% + 50px)
	position relative
	margin-left -25px
	border 1px solid red


</style>
