#!/bin/bash

playerctl metadata --format "{{artist}} - {{title}}" 2>/dev/null | tr '[:upper:]' '[:lower:]'
