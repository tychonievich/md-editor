I use this for editing Markdown if I want live previews. It's designed to run with no server as a `file://` URL.

This uses multiple third-party javascript libraries; `setup.sh` retrieves these, or can be read to find the URLs to download in a different way. I use a CDN delivery service to bundle these libraries into `<script`-includeable files, but download them locally because I want the editor to work when I'm offline too.

Markdown rendering is handled by <https://markdown-it.github.io/>, but I usually use <https://pandoc.org/> for final rendering so I've tried to match these two through various plugins and with JavaScript in `index.html` that parses and partially handles [YAML metadata blocks](https://pandoc.org/MANUAL.html#extension-yaml_metadata_block). It's not a perfect match, and as I run into parts that don't work as I hope they do I add more plugins or other code to line them up.

The UI is dominated by a [CodeMirror](https://codemirror.net/) editor, with a preview pane (provided by [Split.js](https://split.js.org/)) that automatically updates and syncs scrolling on every edit and on a double-click in either pane. Save and load buttons use the browser's native tools to save and load the Markdown source, not the HTML. Edits are also stored in the browser's `localStorage` as two items: `text` contains the current markdown, and `history` contains all CodeMirror change objects that led to its creation. The `history` is currently unused and is erased after a load event, but I have vague aspirations of eventually adding a time line scrubber to the UI.


