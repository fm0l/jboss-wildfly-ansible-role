{{ jboss_home }}/{{ jboss_instance_name }}/bin/jboss-cli.sh<<EOF
embed-server --server-config=latest-{{jboss_conf}}
batch
module add --name=com.oracle --resources={{ jboss_tmp }}/modules/ojdbc{{ jboss_version }}.jar --dependencies=javax.api,javax.transaction.api
/subsystem=datasources/jdbc-driver=oracle:add(driver-name=oracle,driver-module-name=com.oracle)
run-batch
EOF
if [ $? -eq 0 ] ; then
touch {{ jboss_home }}/{{ jboss_instance_name }}/standalone/`basename "$0".executed`
fi
