# Node Feature Discovery (Config) Chart

This chart is deployed as part of the Validated Patterns framework. As such, resources like:

- namespaces
- subscriptions
- operatorgroups

...are deployed via the framework.

## Usage

This chart deploys an instance of the NFD.

By default the following are enabled/disabled:

```yaml
nfd:
  core:
    sleepInterval: 60s
  sources:
    cpu:
      enabled: false
    usb:
      enabled: false
    kernel:
      enabled: false
    pci:
      enabled: true
    custom:
      enabled: false
```

To enable or disable a specific source, change the value to true or false. In the `_nfd-sources.tpl` file some of the sources are commented out. If you need those sources enabled, uncomment the specific line.

Node Feature Rules can be used for rule-based custom labeling of nodes. Add your custom rules to the `_nfd-rules.tpl` file.  

Additionally, we don't provide the topology-updater Custom Resource - Please see [the docs](https://docs.openshift.com/container-platform/4.17/hardware_enablement/psap-node-feature-discovery-operator.html#using-the-nfd-topology-updater_psap-node-feature-discovery-operator)