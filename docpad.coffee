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

            bloodys: ->
                    @getCollection("html").findAllLive({relativeOutDirPath: $in: ['cocktails/the-bloody-mary']},[{title: 1}])

            allCocktails: (database) -> database.findAll({relativeOutDirPath:/recipes[\/\\]\w+/},[date:-1])

    # ...
}

# Export the DocPad Configuration
module.exports = docpadConfig