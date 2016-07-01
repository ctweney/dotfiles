#!/bin/bash
if [ `hostname` == "chronos" ]; then
	export SPARK_HOME=$HOME/spark-1.5.2-bin-custom-spark
	export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/libexec/python:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip:$HOME/dev/rails4-rescuetime/p3rt
	export PYSPARK_PYTHON=python3
	export PATH=$PATH:$SPARK_HOME/bin:/Users/chris/anaconda/bin

	export slave=1
#	export tertiary=1
	export redshift=1

fi
