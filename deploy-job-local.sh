helm uninstall test-restore-extension-api -n apollo
helm upgrade --install test-restore-extension-api -n apollo --debug ./job-test-chart
