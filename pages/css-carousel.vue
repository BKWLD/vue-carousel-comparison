<!--css based carousel demo -->

<template lang='pug'>

.page
	h1 CSS Based Carousel

	h2 Full width slides
	.carousel-wrap.full-width(ref='fullSlide')
		.carousel(ref='slider')
			.slide(v-for='num in 6' 
				:key='num'
				:num='num'
				ref='fullSlides'): visual-slide(:num='num')
			
		.slider-navigation
			.prev(v-if='currentIndex > 1' @click='goPrev') ←
			.next(v-if='currentIndex < 6' @click='goNext') →

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
				:num='num'): visual-slide(:num='num' 
					variable-width)
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

	data: -> currentIndex: 1

	mounted: ->
		options =
			root: @$refs.fullSlide
			rootMargin: '0px'
			threshold: 0.5
		observer = new IntersectionObserver @checkSlide, options
		for slide, i in @$refs.fullSlides
			observer.observe slide

	methods:
		checkSlide: (entries, observer) ->
			for entry in entries
				if entry.isIntersecting
					@currentIndex = entry.target.attributes.num.value

		goNext: (index) ->
			if @currentIndex < 6 then @currentIndex++

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
	position relative
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

.prev,
.next
	position absolute
	top 50%
	transform translateY(-50%)
	width 50px
	height 50px
	border-radius 50%
	box-shadow 0px 2px 5px rgba(0,0,0,0.5)
	background white
	display flex
	justify-content center
	align-items center
	font-size 20px
	cursor pointer

.prev
	left -20px

.next
	right -20px

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
