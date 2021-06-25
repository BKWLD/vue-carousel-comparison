<!--css based carousel demo -->

<template lang='pug'>

.page
	h1 CSS Based Carousel

	h2 Full width slides
	.carousel-wrap.full-width
		.carousel(ref='slider')
			.slide(v-for='num in 6' 
				:key='num'
				:num='num'): visual-slide(:num='num')
		.pagination
			.dot(v-for='num in 6' 
				:key='num'
				:num='num'
				:class="{ 'active' : currentIndex == num }"
				@click='jumpToSlide(num)')

	h2 Multiple slides per viewport with peeking
	.carousel-wrap.peeking
		.carousel
			.slide(v-for='num in 6' 
				:key='num'
				:num='num'): visual-slide(:num='num')
		.pagination
			.dot(v-for='num in 6' 
				:key='num'
				:num='num'
				:class="{ 'active' : currentIndex == num }"
				@click='jumpToSlide(num)')

	h2 Less slides than pagination
	.carousel-wrap.less-than-pag
		.carousel
			.slide(v-for='num in 1' 
				:key='num' 
				:num='num'): visual-slide(:num='num')

	h2 Variable aspect slides
	.carousel-wrap.variable-width
		.carousel
			.slide(v-for='num in 6' 
				:key='num'
				:num='num'): visual-slide(:num='num')
		.pagination
			.dot(v-for='num in 6' 
				:key='num'
				:num='num'
				:class="{ 'active' : currentIndex == num }"
				@click='jumpToSlide(num)')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>

export default

	data: -> currentIndex: 0

	methods:

		# Slider navigation
		goNext: (index) ->
			if @currentIndex < @media.length - 1 then @currentIndex++

		goPrev: (index) ->
			if @currentIndex > 0 then @currentIndex--

		jumpToSlide: (i) -> @currentIndex = i
	
	watch:
		currentIndex: (val) ->
			@$refs.slider.scroll {
				left: @$refs.slider.offsetWidth * (@currentIndex - 1)
				behavior: 'smooth'
			}


</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

*::-webkit-scrollbar
	display none

.carousel-wrap
	overflow hidden
	display flex
	flex-wrap wrap
	justify-content center
	width 100%

.peeking
	overflow visible
	
	.carousel
		width 90%

.carousel
	display flex
	width 100%
	height auto
	overflow-x auto
	scroll-snap-type x mandatory
	scroll-behavior smooth

.pagination
	display flex
	justify-content center
	margin-top 20px

.dot
	width 20px
	height 20px
	border-radius 50%
	border 1px solid black
	margin 0 5px

	&.active
		background black	

.full-width
	.slide
		width 100%

.less-than-pag
	.carousel
		justify-content center

.slide
	width 300px
	height 100%
	flex-shrink 0
	-webkit-overflow-scrolling touch
	scroll-snap-align start

</style>
