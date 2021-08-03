#!/bin/sh

CRAFTTWEAKER_LOG=${CRAFTTWEAKER_LOG:-"PATH_TO_CRAFTTWEAKER_LOG"}

awk -F'[<>]' '/\[bracket\]\[[a-zA-Z]+\]: / { print $2 "\tnull\t0" }' "$CRAFTTWEAKER_LOG" | sort | uniq

