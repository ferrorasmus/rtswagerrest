oc login -u rasmus.tibell@pensionsmyndigheten.se -p LuckyStr1ke
oc status

oc new-project rtswagerrest --display-name="RT Swagger REST"
oc status

oc create configmap rtswagerrest-config --from-file=src/main/resources/mapinfo.properties
oc get configmap rtswagrrest-config -o yaml

oc new-app wildfly:10.0~https://github.com/ferrorasmus/rtswagerrest.git
oc status

oc scale dc rtswagerrest --replicas=1
oc status

oc get pods -o wide

#oc expose svc/frontnd

