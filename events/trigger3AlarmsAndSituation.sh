#!/bin/sh

$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/alarms/trigger \
  -p 'node localhost' \
  -p 'ip 0.0.0.0' \
  -p 'service ALARM_A' \
  -p 'type ENV' \
  -p 'cat1 ENVIRONMENTAL' \
  -p 'cat2 HUMIDITY' \
  -p 'hexcode 0xfff06131' \
   -x 7 \
   -n 1

$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/alarms/trigger \
  -p 'node localhost' \
  -p 'ip 0.0.0.0' \
  -p 'service ALARM_B' \
  -p 'type ENV' \
  -p 'cat1 ENVIRONMENTAL' \
  -p 'cat2 HUMIDITY' \
  -p 'hexcode 0xfff06131' \
   -x 7 \
   -n 1

$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/alarms/trigger \
  -p 'node localhost' \
  -p 'ip 0.0.0.0' \
  -p 'service ALARM_C' \
  -p 'type ENV' \
  -p 'cat1 ENVIRONMENTAL' \
  -p 'cat2 HUMIDITY' \
  -p 'hexcode 0xfff06131' \
   -x 7 \
   -n 1

sleep 5

$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/alarms/trigger \
  -p 'node localhost' \
  -p 'ip 0.0.0.0' \
  -p 'service SITUATION' \
  -p 'type ENV' \
  -p 'cat1 ENVIRONMENTAL' \
  -p 'cat2 HUMIDITY' \
  -p 'hexcode 0xfff06131' \
  -p 'related-reductionKey uei.opennms.org/alarms/trigger:localhost:0.0.0.0:ALARM_A' \
  -p 'related-reductionKey uei.opennms.org/alarms/trigger:localhost:0.0.0.0:ALARM_B' \
  -p 'related-reductionKey uei.opennms.org/alarms/trigger:localhost:0.0.0.0:ALARM_C' \
   -x 7 \
   -n 1

