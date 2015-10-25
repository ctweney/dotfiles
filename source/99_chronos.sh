#!/bin/bash
if [ `hostname` == "chronos" ]; then
	export SPARK_HOME=$HOME/spark-1.5.0
	export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip:$HOME/dev/rails4-rescuetime/p3rt
	source $HOME/.aws/env_vars
fi
