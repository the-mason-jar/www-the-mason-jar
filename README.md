## [The Mason Jar Project](http://www.the-mason-jar.com/)

### Powered by [DocPad](http://docpad.org)

A static front-end to the [primary recipe repo](https://github.com/the-mason-jar/the-mason-jar). If you're looking at this and want to submit your own cocktails or infusions, [go there](https://github.com/the-mason-jar/the-mason-jar).

To build the site to pull in new changes in the [primary recipe repo](https://github.com/the-mason-jar/the-mason-jar):

1. Commit any changes to the primary repo and push them up to Github
2. Go into the primary recipe repo submodule directory `cd src/documents/the-mason-jar`
3. Pull primary recipes repo `git pull origin master`
4. Head back up to the root directory `cd ../../../`
5. Run `docpad build` or, if that doesn't work `docpad run`
6. Add and commit the changes `git add` then `git commit -am`
7. Push to Github `git push origin master`
8. Push to Heroku `git pull heroku master`


How to handle a tricky merge:

1. The "out" folder will usually have conflicts you'll need to merge manually
2. Take care of any conflicts in the "src" folder
3. Run `docpad build` or, if that doesn't work `docpad run`
4. Add/commit the changes
5. Should be good to go