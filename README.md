ctags-crafttweaker
==================

*ctags-crafttweaker* contains scripts to make auto-completion of bracket-handlers for *CraftTweaker* in your favorite editor possible, by generating a *ctags*-compatible tag-file.

dump_brackets.zs
----------------

`dump_brackets.zs` will dump bracket-handler values for registered items, oredict and liquids to the *CraftTweaker*-Log.
The script attaches itself to the `/ct scripts` in-game command to trigger dumping of values.
The output is in ZenScript syntax, with prefixes to easily filter for items/oredict/liquids.

gen_tags.sh
-----------

`gen_tags.sh` parses the *CraftTweaker*-Log and outputs a simple *ctags*-file of the previously dumped values.
Symbols in the tags-file are fully qualified (ie. `minecraft:log:1`), including metadata (omitted when `0`), excluding the brackets (`<>`) and *NBT* data.
The path to the *CraftTweaker*-Log can be configured in the script, and overridden using the environment variable `CRAFTTWEAKER_LOG`.

complete.vim
------------

`complete.vim` includes a small *VimScript* snippet that makes the tag-based completion a bit more convenient to work with in *vim*.

