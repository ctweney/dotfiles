#!/bin/bash
if [ `hostname` == "chronos" ]; then
	#export SPARK_HOME=$HOME/spark-2.0.0-bin-hadoop2.7
	#export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/libexec/python:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip
	#export PYSPARK_PYTHON=python3
	export PATH=$PATH:$SPARK_HOME/bin:/Users/chris/anaconda/bin

	export slave=1
  #	export tertiary=1
	export redshift=1
  export postgres=1

  export AIRFLOW__CORE__DAGS_FOLDER=/Users/chris/dev/rails4-rescuetime/p3rt/rt/airflow/dags/
  export DJANGO_SETTINGS_MODULE=rt.settings
  export R_LIBS=/Users/chris/dev/rescuetime-research/packages/

  export ANDROID_HOME=/Users/chris/Library/Android/sdk
  export ANDROID_SDK_ROOT=/Users/chris/Library/Android/sdk
fi
