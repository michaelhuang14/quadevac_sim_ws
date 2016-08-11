#!/usr/bin/env bash
current_dir=`pwd`
menge_root=$current_dir/../Menge
export MENGE_EXE=$menge_root/Exe
export MENGE_PROJECT_PATH=$menge_root/examples/core/outside.xml
export GAZEBO_PLUGIN_PATH=$current_dir/devel/lib/
export GAZEBO_MODEL_PATH=$current_dir/src/menge_gazebo/menge_gazebo_worlds/models
cp $MENGE_EXE/libmengeCore.so devel/lib/
