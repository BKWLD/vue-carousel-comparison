# Use Cloak to make boilerplate
{ mergeConfig, makeBoilerplate, isDev, isGenerating } = require '@bkwld/cloak'
boilerplate = makeBoilerplate
	siteName: 'Vue Carousel Comparison'

# Nuxt config
module.exports = mergeConfig boilerplate,
	plugins: [
		'~/plugins/globals'
	]
	build:
		loaders:
			vue:
				compilerOptions:
					preserveWhitespace: false
