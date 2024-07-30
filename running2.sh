#!/bin/bash
echo "Content-type: text/html"
echo ""
echo -e "unikpass\nunikpass" | pveum passwd unikuser@pve
