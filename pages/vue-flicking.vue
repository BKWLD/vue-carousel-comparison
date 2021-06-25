<!-- vue-slick-carousel carousel demo -->

<template lang='pug'>

.page
	h1 vue-flicking

	h2 Full width slides
	flicking(:options=`{
		circular: true,
		align: "center"
	}`)
		div.slide-full(v-for='num in 6' :key='num' :num='num')
			visual-slide.slide(:num='num')

	h2 Multiple slides per viewport with peeking
	flicking(:options=`{
		align: "center",
		circular: true
	}`)
		div.slide-80(v-for='num in 6' :key='num' :num='num')
			visual-slide.slide(:num='num')


	h2 Less slides than pagination
	flicking(:options=`{

	}`)
		div.slide-80(v-for='num in 1' :key='num' :num='num')
			visual-slide.slide(:num='num')

	h2 Variable aspect slides
	flicking(:options=`{
		circular: true
	}`)
		div(v-for='num in 6' :key='num' :num='num')
			visual-slide.slide(:num='num' variable-width)


	//- h2 Variable aspect slides
	//- vue-slick-carousel(
	//- 	arrows dots
	//- 	variable-width)
	//- 	div(v-for='num in 6' :key='num' :num='num')
	//- 		visual-slide(:num='num' variable-width)


</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import "@egjs/vue-flicking/dist/flicking.css";



</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>
@import url("node_modules/@egjs/vue-flicking/dist/flicking.css");

.slide-full
	width 100%

.slide-80
	width 30%

</style>
