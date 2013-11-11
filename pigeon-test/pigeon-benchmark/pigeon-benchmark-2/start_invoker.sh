#!/bin/bash

export CLASSPATH=.
for jarlib in `ls ./lib/*.jar`
do
  CLASSPATH=$CLASSPATH:$jarlib
done
export CLASSPATH=$CLASSPATH

nohup java -server -Xms128m -Xmx512m  -classpath $CLASSPATH  com.dianping.pigeon.test.client.benchmark.call.DefaultTest  > ./invoker.log &