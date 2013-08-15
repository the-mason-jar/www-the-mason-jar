## [The Mason Jar Project](http://www.the-mason-jar.com/)

### Powered by [DocPad](http://docpad.org)

A static front-end to the [primary repo](https://github.com/the-mason-jar/the-mason-jar). If you're looking at this and want to submit your own cocktails or infusions, [go there](https://github.com/the-mason-jar/the-mason-jar).

Still a lot of work to be done here. For example the submodule thing seems to work, but the process seems a bit convoluted so I'm not sure I'm doing it the best way.

To build the site to pull in new changes in the [primary repo](https://github.com/the-mason-jar/the-mason-jar):

1. Commit any changes to the primary repo and push them up to Github.
2. Go into the submodule directory `src/documents/the-mason-jar`, pull and commit the new changes. Then push again.
3. Head back up to the root directory here. Run `docpad build`.
4. Commit this repo.
5. Push all of the things.

How to handle a tricky merge:

1. The "out" folder will usually have conflicts you'll need to merge manually.
2. Take care of any conflicts in the "src" folder.
3. Run `docpad build`
4. Add/commit the changes.
5. Should be good to go.

## License
Copyright &copy; 2013+ All rights reserved.