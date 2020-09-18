#!/bin/bash
PaPath=$1
function gitmonitor(){
	git add . -A
	git commit -m "git monitor commit. " --author="monitor<tracer@njuics.org>"
	sync
	}

cd $PaPath
gitmonitor
