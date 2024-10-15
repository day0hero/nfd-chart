{{/* Match if "veth" kernel module is loaded */}}
{{- define "nfd-chart.loadedModules" }}
- feature: kernel.loadedmodule
  matchExpressions:
    veth: {op: Exists}
{{- end }}

{{/* Match if any PCI device with vendor 8086 exists in the system */}}
{{- define "nfd-chart.matchDevices" }}
- feature: pci.device
  matchExpressions:
    vendor: {op: In, value: ["8086"]}
{{- end }}
