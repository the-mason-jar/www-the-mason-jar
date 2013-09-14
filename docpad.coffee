# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    # ...

    # Documents Paths
        # An array of paths which contents will be treated as documents
        # If it is a relative path, it will have the resolved `srcPath` prepended to it
        documentsPaths: [  # default
            'documents/the-mason-jar/recipes', 'pages'
        ]

    templateData:
        site:
            title: "The Mason Jar"
        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
        getPageTitle: -> if @document.title then "#{@document.title}" else @site.title

    collections:
        pages: ->
            @getCollection('html').findAllLive({isPage:true},[{filename:1}])

        featured: ->
            @getCollection("html").findAllLive({featured:true}, [{title: 1}])

        allCocktails: (database) -> database.findAll({relativeOutDirPath:/cocktails[\/\\]\w+/},[date:-1]).on('add', (document) ->
                document.setMetaDefaults(layout:'recipe')  unless document.get('layout'))

        allInfusions: (database) -> database.findAll({relativeOutDirPath:/infusions[\/\\]\w+/},[date:-1]).on('add', (document) ->
                document.setMetaDefaults(layout:'recipe')  unless document.get('layout'))

        allExtras: (database) -> database.findAll({relativeOutDirPath:/extras[\/\\]\w+/},[date:-1]).on('add', (document) ->
                document.setMetaDefaults(layout:'recipe')  unless document.get('layout'))

    # ...
}

# Export the DocPad Configuration
module.exports = docpadConfig