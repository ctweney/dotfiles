export PATH=$PATH:/Users/christweney/bin:/Users/christweney/dev/tools/bin:$HOME/.rvm/bin:/opt/X11/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/"

# JRuby for devs
export JRUBY_OPTS="--dev"

# JRuby to be more server-like: JRUBY_OPTS="-Xcext.enabled=true -X-C -J-Xms300m -J-Xmx900m -J-XX:MaxPermSize=500m --headless -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-Xcompile.invokedynamic=false -J-XX:+UseConcMarkSweepGC --dev"

export PGDATA=/usr/local/var/postgres
export SIMPLE_COV_ENABLED="false"

ssh_calcentral_nodes() {
	csshX ctweney@ets-calcentral-$1-{01,02,03}.ist.berkeley.edu
}

# Setting PATH for JRuby 1.7.0
PATH="${PATH}:/Library/Frameworks/JRuby.framework/Versions/Current/bin"
export PATH

