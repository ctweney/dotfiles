#!/bin/bash
if [ `hostname` == "chronos.local" ]; then
	#export SPARK_HOME=$HOME/spark-2.0.0-bin-hadoop2.7
	#export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/libexec/python:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip
	#export PYSPARK_PYTHON=python3
	export PATH=$PATH:$SPARK_HOME/bin:~/.pyenv/shims

	export slave=1
  #	export tertiary=1
	export redshift=1
  export postgres=1
  export beanstalk=1

  export RECAPTCHA_DISABLE=true

  export AIRFLOW__CORE__DAGS_FOLDER=/Users/chris/dev/rescuetime-web/p3rt/rt/airflow/dags/
  export AIRFLOW__CORE__SQL_ALCHEMY_CONN=postgresql://chris@localhost:5432/airflow
  export CONFLUENT_HOME="/Users/chris/confluent-6.1.1/"

  export DJANGO_SETTINGS_MODULE=rt.settings
  export R_LIBS=/Users/chris/dev/rescuetime-research/packages/

  export ANDROID_HOME=/Users/chris/Library/Android/sdk
  export ANDROID_SDK_ROOT=/Users/chris/Library/Android/sdk

  export HOMEBREW_NO_INSTALL_CLEANUP=1

  export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
  export HISTSIZE=100000                   # big big history
  export HISTFILESIZE=100000               # big big history
  shopt -s histappend                      # append to history, don't overwrite it

fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chris/google-cloud-sdk/path.bash.inc' ]; then . '/Users/chris/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chris/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/chris/google-cloud-sdk/completion.bash.inc'; fi

# enable auto-activate for pyenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export BASH_SILENCE_DEPRECATION_WARNING=1

# enable pyenv
eval "$(pyenv init -)"
