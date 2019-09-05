# jboss-wildfly-ansible-role

This is a role you can use to deploy a customized instance of Wildfly or JBoss EAP

_This project supports multi-instances thanks to the custom properties (multipleIPs) or socket binding port offset (singleIP, different ports)_

Supported on:
_JBoss 7 / Wildfly 10-16_

### Prerequisites:

A Web server or a path where you can put the binaries (Modules and ZIP file for Wildfly or JBoss)
The variable for this configuration is *default/main.yml:content_url*

### How-TO:

Read the variables! I will work on documenting this project in the future (i hope...).

### Custom Batch Application:

There is a custom batch CLI application system.
Basically just follow the template inside files/wildfly_batch and create your application configs that will be automatically configured

### Deploy Applications:

My suggestion is to use the managed deploy with the CLI batches so you dont have to think about adding a play/role for deploy (with the module or the deployment scanner)

### ToDO:

- Remove the checksum copy mechanism

- Set an handler for instance restart

- Make a better user/password management system with add-user.sh and ansible-vault
