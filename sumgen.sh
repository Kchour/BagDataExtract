#!/usr/bin/env bash
rostopic list >> listinfo.txt
rostopic list |xargs -n 1 rostopic type >> typeinfo.txt
rostopic list | xargs -n 1 rostopic type | xargs -n 1 rosmsg show >> msginfo.txt
