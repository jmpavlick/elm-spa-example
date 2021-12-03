#!/bin/bash

## determine this script's directory location, and define a function
## so we can "go home" whenever we want to
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
function gohome() {
	cd $script_dir
}

function stop() {
	gohome

	# you can put kill commands here, if you need to
}

stop

elm-live -p 3000 -d ./ --pushstate -- ./src/Main.elm --debug --output ./elm.js

trap stop EXIT
