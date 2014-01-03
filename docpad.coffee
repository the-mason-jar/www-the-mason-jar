# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	# ...

	plugins:
		repocloner:
			repos: [
				name: 'Recipes'
				path: 'src/documents/recipes'
				branch: 'master'
				url: 'https://github.com/the-mason-jar/the-mason-jar.git'
			]

	templateData:
		site:
			title: "The Mason Jar"
		getPreparedTitle: ->
			if @document.title then "#{@document.title} | #{@site.title}" else @site.title
		getPageTitle: ->
			if @document.title then "#{@document.title}" else @site.title

	collections:
		pages: ->
			@getCollection('html').findAllLive({isPage:true},[{filename:1}])

		featured: ->
			@getCollection("html").findAllLive({featured:true}, [{title: 1}])

		allCocktails: (database) ->
			database.findAllLive({relativeOutDirPath:/cocktails[\/\\]\w+/}, [date:-1]).on('add', (document) ->
				document.setMetaDefaults(layout:'recipe')  unless document.get('layout')
			)

		allInfusions: (database) ->
			database.findAllLive({relativeOutDirPath:/infusions[\/\\]\w+/}, [date:-1]).on('add', (document) ->
				document.setMetaDefaults(layout:'recipe')  unless document.get('layout')
			)

		allExtras: (database) ->
			database.findAllLive({relativeOutDirPath:/extras[\/\\]\w+/}, [date:-1]).on('add', (document) ->
				document.setMetaDefaults(layout:'recipe')  unless document.get('layout')
			)

	# ...
}

# Export the DocPad Configuration
module.exports = docpadConfig