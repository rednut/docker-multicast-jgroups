#!/usr/bin/env bash
set +x
set +e
cd /opt
JAR=/opt/jgroups-3.3.3.Final.jar

ACTION=${1:-${ACTION:-receiver}}

CLASS=org.jgroups.tests.McastReceiverTest


if [ $ACTION == "sender" ]; then
	ACTION=receiver
	CLASS=org.jgroups.tests.McastSenderTest

fi

echo "ACTION=$ACTION so using class $CLASS"
java -cp $JAR $CLASS -mcast_addr ${MCAST_ADDR:-231.12.21.132} -port ${MCAST_PORT:-45566}
