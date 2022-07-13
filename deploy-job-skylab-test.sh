helm uninstall test-restore-extension-api -n skylab-test
helm upgrade --install test-restore-extension-api -n skylab-test --debug --values ./job-test-chart/values/values-aks-skylab-test.yml ./job-test-chart
