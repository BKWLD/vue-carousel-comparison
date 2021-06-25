<!-- Render a slide that doesn't lazy load -->

<template lang='pug'>

vue-visual(
	transition=''
	:lazy-load='false'
	:image='src'
	:aspect='16/9')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default

	props:

		# The slide number
		num: Number

	computed:

		# Make the src reference
		src: -> "/imgs/16x9/#{@num}.png"

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>



</style>
