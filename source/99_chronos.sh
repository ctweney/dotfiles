#!/bin/bash
if [ `hostname` == "chronos" ]; then
	export SPARK_HOME=$HOME/spark-1.5.0
	export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip:$HOME/dev/rails4-rescuetime/p3rt
	export PYSPARK_PYTHON=python3
	export PATH=$PATH:$SPARK_HOME/bin
	source $HOME/.aws/env_vars
fi
