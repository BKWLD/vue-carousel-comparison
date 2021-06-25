<!-- vue-slick-carousel carousel demo -->

<template lang='pug'>

.page
	h1 vue-slick-carousel

	h2 Full width slides
	vue-slick-carousel(arrows dots)
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num')

	h2 Multiple slides per viewport with peeking
	vue-slick-carousel(
		arrows dots
		center-mode
		center-padding='5%'
		:slides-to-show='3'
		:responsive=`[
			{
				breakpoint: 768,
				settings: { slidesToShow: 2 }
			},
			{
				breakpoint: 500,
				settings: { slidesToShow: 1 }
			}
		]`)
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num')

	h2 Less slides than pagination
	vue-slick-carousel(
		arrows dots
		center-mode
		:slides-to-show='3')
		div(v-for='num in 1' :key='num' :num='num')
			visual-slide(:num='num')

	h2 Variable aspect slides
	vue-slick-carousel(
		arrows dots
		variable-width)
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide(:num='num' variable-width)


</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import VueSlickCarousel from 'vue-slick-carousel'
import 'vue-slick-carousel/dist/vue-slick-carousel.css'
import 'vue-slick-carousel/dist/vue-slick-carousel-theme.css'

export default
	components: { VueSlickCarousel }

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

// Make images draggable
.visual-slide
	pointer-events none

// Make the dots color
>>> .slick-dots li button:before
	@media (prefers-color-scheme: dark)
		color white

</style>
