#!/usr/bin/env bash
current_dir=`pwd`
export MENGE_ROOT=$current_dir/../Menge
export MENGE_PROJECT_PATH=examples/core/predetermined.xml
export GAZEBO_PLUGIN_PATH=$current_dir/devel/lib/
export GAZEBO_MODEL_PATH=$current_dir/src/menge_gazebo/menge_gazebo_worlds/models
cp $MENGE_ROOT/Exe/libmengeCore.so devel/lib/
