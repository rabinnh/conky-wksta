#!/bin/bash

# case insensitive
shopt -s nocasematch

MODEL=`cat /proc/cpuinfo | grep "model name" | sort | uniq`
THREADS=`cat /proc/cpuinfo | grep "bogo" | wc -l`
PHYSICAL=`cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l`
CORES=`cat /proc/cpuinfo | grep "cpu cores" | sort | uniq | cut -d':' -f2`
PHY_CORES=$(($PHYSICAL * $CORES))

# All
if [[ $# -eq 0 ]]
then
    echo "$MODEL" | cut -d':' -f2 | tr -s ' ' | sed "s/^[[ \t]]*//"
    echo "Processors $PHYSICAL"
    echo "Physical cores $PHY_CORES"
    echo "Incl. hyperthreading cores $THREADS"
fi

# Model
if [[ "$1" == "model" ]]
then
    echo "$MODEL" | cut -d':' -f2 | tr -s ' ' | sed "s/^[[ \t]]*//"
fi

# Physical processors
if [[ "$1" == "processors" ]]
then
    echo "$PHYSICAL" | cut -d':' -f2 | tr -s ' ' | sed "s/^[[ \t]]*//"
fi

# Model
if [[ "$1" == "cores" ]]
then
    echo "$PHY_CORES" | cut -d':' -f2 | tr -s ' ' | sed "s/^[[ \t]]*//"
fi

# Model
if [[ "$1" == "threads" ]]
then
    echo "$THREADS" | cut -d':' -f2 | tr -s ' ' | sed "s/^[[ \t]]*//"
fi
