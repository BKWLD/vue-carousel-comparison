<!-- vue-slick-carousel carousel demo -->

<template lang='pug'>

.page
	h1 vue-slick-carousel

	h2 Basic
	vue-slick-carousel(arrows dots)
		vue-visual(image='/imgs/16x9/1.png' :aspect='16/9')
		vue-visual(image='/imgs/16x9/2.png' :aspect='16/9')
		vue-visual(image='/imgs/16x9/3.png' :aspect='16/9')
		vue-visual(image='/imgs/16x9/4.png' :aspect='16/9')
		vue-visual(image='/imgs/16x9/5.png' :aspect='16/9')
		vue-visual(image='/imgs/16x9/6.png' :aspect='16/9')

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
.vv-visual
	pointer-events none

</style>
