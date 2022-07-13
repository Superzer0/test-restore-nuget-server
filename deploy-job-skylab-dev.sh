helm uninstall test-restore-extension-api -n skylab-dev
helm upgrade --install test-restore-extension-api -n skylab-dev --debug --values ./job-test-chart/values/values-aks-skylab-dev.yml ./job-test-chart
