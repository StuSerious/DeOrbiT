#!/bin/bash
pacstall -S $ | cut -c 8- | awk '{print $1}'| fzf --preview-window=right:80%:wrap --multi --preview 'pacstall -Qi {1} | tail -1'| xargs -ro pacstall -I