# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    # ...
    templateData:
        site:
            title: "The Mason Jar"
        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
        getPageTitle: -> if @document.title then "#{@document.title}" else @site.title

    collections:
            pages: ->
                @getCollection('html').findAllLive({isPage:true},[{filename:1}])

            allCocktails: (database) -> database.findAll({relativeOutDirPath:/cocktails[\/\\]\w+/},[date:-1]).on "add", (model) ->
            model.setMetaDefaults({layout: "post"})

            allInfusions: (database) -> database.findAll({relativeOutDirPath:/infusions[\/\\]\w+/},[date:-1])

            allGarnishes: (database) -> database.findAll({relativeOutDirPath:/garnishes[\/\\]\w+/},[date:-1])

    # ...
}

# Export the DocPad Configuration
module.exports = docpadConfig