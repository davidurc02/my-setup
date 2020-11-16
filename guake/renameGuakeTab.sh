#!/bin/bash
if [ $# -gt 0 ]
then
	guake -r "$1"
else
	guake -r "SomeTab"
fi
