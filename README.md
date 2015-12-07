# vagrant_pipeline

- Configures vagrant vm with jenkins on centos7.

- Supports both ansible or chef_zero provisioners.

- Installs and configures jenkins via seed and job dsl for
  automating code deployment pipelines.

- Works locally with virtualbox provider.




### ANSIBLE PROVISIONER:

pipeline-ansible           : ok=24   changed=14   unreachable=0    failed=0

real    6m14.676s
user    0m10.332s
sys 0m2.244s



### CHEFZERO PROVISIONER:

pipeline-chef: [2015-12-07T17:50:52-05:00] INFO: Chef Run complete in 156.874344877 seconds

real    5m19.306s
user    0m9.868s
sys 0m2.344s
