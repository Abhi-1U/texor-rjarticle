## Pandoc usage commands

#### without filtering  

```lua
pandoc example.md --from markdown --to html5 --output example.html
```

#### with filtering

```lua
pandoc example.md --from markdown --to html5 --output filtered-example.html --lua-filter image_numbering_filter.lua
```
