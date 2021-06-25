<!-- Render a slide that doesn't lazy load -->

<template lang='pug'>

.visual-slide(:style='styles'): vue-visual(
	transition=''
	:lazy-load='false'
	:image='src'
	:aspect='aspect')
	span Slide {{ num }}

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import seedrandom from 'seedrandom'
export default

	props:

		# The slide number
		num: Number

		# Apply variable width logic
		variableWidth: Boolean

	computed:

		# Make the src reference
		src: -> "/imgs/16x9/#{@num}.png"

		# "Randomize" the aspect if variable width
		aspect: ->
			unless @variableWidth then 16/9
			else (seedrandom(@num)() * 0.5 - 0.25) + 16/9

		# Make the CSS width that uses the aspect for consistent heights
		styles: ->
			return unless @variableWidth
			width: 250 * @aspect + 'px'

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

.visual-slide
	margin-h 5px

</style>
