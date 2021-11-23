echo appcenter:v1.0.1.4-4b865dd99-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/appcenter:v1.0.1.4-4b865dd99-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=appcenter --tag=v1.0.1.4-4b865dd99-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/appcenter:v1.0.1.4-4b865dd99-aliyun_conv
echo node-lifecycle-controller-amd64:v1.2.0-ce260ff >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/node-lifecycle-controller-amd64:v1.2.0-ce260ff_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=node-lifecycle-controller-amd64 --tag=v1.2.0-ce260ff
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/node-lifecycle-controller-amd64:v1.2.0-ce260ff_conv
echo aliyun-ingress-controller:v0.22.0.5-552e0db-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-ingress-controller:v0.22.0.5-552e0db-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=aliyun-ingress-controller --tag=v0.22.0.5-552e0db-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-ingress-controller:v0.22.0.5-552e0db-aliyun_conv
echo csi-snapshotter:v3.0.2-1038b92d8-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/csi-snapshotter:v3.0.2-1038b92d8-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=csi-snapshotter --tag=v3.0.2-1038b92d8-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/csi-snapshotter:v3.0.2-1038b92d8-aliyun_conv
echo terway:v1.0.10.333-gfd2b7b8-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/terway:v1.0.10.333-gfd2b7b8-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=terway --tag=v1.0.10.333-gfd2b7b8-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/terway:v1.0.10.333-gfd2b7b8-aliyun_conv
echo aliyun-ingress-controller:v0.44.0.2-abf1c6fe4-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-ingress-controller:v0.44.0.2-abf1c6fe4-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=aliyun-ingress-controller --tag=v0.44.0.2-abf1c6fe4-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-ingress-controller:v0.44.0.2-abf1c6fe4-aliyun_conv
echo terway:v1.0.10.390-g5f3c461-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/terway:v1.0.10.390-g5f3c461-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=terway --tag=v1.0.10.390-g5f3c461-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/terway:v1.0.10.390-g5f3c461-aliyun_conv
echo aliyun-ingress-controller:v0.44.0.3-8e83e7dc6-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-ingress-controller:v0.44.0.3-8e83e7dc6-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=aliyun-ingress-controller --tag=v0.44.0.3-8e83e7dc6-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-ingress-controller:v0.44.0.3-8e83e7dc6-aliyun_conv
echo node-problem-detector:v0.6.3-28-160499f >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/node-problem-detector:v0.6.3-28-160499f_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=node-problem-detector --tag=v0.6.3-28-160499f
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/node-problem-detector:v0.6.3-28-160499f_conv
echo metrics-server:v0.3.8.5-307cf45-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/metrics-server:v0.3.8.5-307cf45-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=metrics-server --tag=v0.3.8.5-307cf45-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/metrics-server:v0.3.8.5-307cf45-aliyun_conv
echo metrics-server:v0.3.7-4c92472-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/metrics-server:v0.3.7-4c92472-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=metrics-server --tag=v0.3.7-4c92472-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/metrics-server:v0.3.7-4c92472-aliyun_conv
echo aliyun-acr-credential-helper:v21.01.26.0-9ac7d9b-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-acr-credential-helper:v21.01.26.0-9ac7d9b-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=aliyun-acr-credential-helper --tag=v21.01.26.0-9ac7d9b-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/aliyun-acr-credential-helper:v21.01.26.0-9ac7d9b-aliyun_conv
echo node-problem-detector:v0.6.3-29-71bd5f8 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/node-problem-detector:v0.6.3-29-71bd5f8_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=node-problem-detector --tag=v0.6.3-29-71bd5f8
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/node-problem-detector:v0.6.3-29-71bd5f8_conv
echo flexvolume:v1.12.6.52-f6604e5-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.12.6.52-f6604e5-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=flexvolume --tag=v1.12.6.52-f6604e5-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.12.6.52-f6604e5-aliyun_conv
echo flexvolume:v1.14.6.15-8d3b7e7-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.14.6.15-8d3b7e7-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=flexvolume --tag=v1.14.6.15-8d3b7e7-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.14.6.15-8d3b7e7-aliyun_conv
echo heapster-amd64:v1.5.1.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/heapster-amd64:v1.5.1.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=heapster-amd64 --tag=v1.5.1.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/heapster-amd64:v1.5.1.1_conv
echo logtail:v0.16.62.0-da583e0-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/logtail:v0.16.62.0-da583e0-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=logtail --tag=v0.16.62.0-da583e0-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/logtail:v0.16.62.0-da583e0-aliyun_conv
echo logtail:v0.16.34.2-f6647154-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/logtail:v0.16.34.2-f6647154-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=logtail --tag=v0.16.34.2-f6647154-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/logtail:v0.16.34.2-f6647154-aliyun_conv
echo eventer:v1.6.0-4c4c66c-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/eventer:v1.6.0-4c4c66c-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=eventer --tag=v1.6.0-4c4c66c-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/eventer:v1.6.0-4c4c66c-aliyun_conv
echo kube-apiserver:v1.18.8-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-apiserver:v1.18.8-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-apiserver --tag=v1.18.8-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-apiserver:v1.18.8-aliyun.1_conv
echo velero:1.5.2-c875c98b-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/velero:1.5.2-c875c98b-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=velero --tag=1.5.2-c875c98b-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/velero:1.5.2-c875c98b-aliyun_conv
echo gpu-prometheus-exporter:v1.0.0-5c5a9f4 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/gpu-prometheus-exporter:v1.0.0-5c5a9f4_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=gpu-prometheus-exporter --tag=v1.0.0-5c5a9f4
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/gpu-prometheus-exporter:v1.0.0-5c5a9f4_conv
echo kube-proxy:v1.18.8-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.18.8-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-proxy --tag=v1.18.8-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.18.8-aliyun.1_conv
echo arena-deploy-manager:0.8.6-a2bec8c-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/arena-deploy-manager:0.8.6-a2bec8c-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=arena-deploy-manager --tag=0.8.6-a2bec8c-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/arena-deploy-manager:0.8.6-a2bec8c-aliyun_conv
echo kube-scheduler:v1.20.4-ack-3.0 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-scheduler:v1.20.4-ack-3.0_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-scheduler --tag=v1.20.4-ack-3.0
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-scheduler:v1.20.4-ack-3.0_conv
echo kube-scheduler:v1.18-ack-3.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-scheduler:v1.18-ack-3.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-scheduler --tag=v1.18-ack-3.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-scheduler:v1.18-ack-3.1_conv
echo autoscaler:v1.3.1-9dc045bde-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/autoscaler:v1.3.1-9dc045bde-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=autoscaler --tag=v1.3.1-9dc045bde-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/autoscaler:v1.3.1-9dc045bde-aliyun_conv
echo autoscaler:v1.3.1-ccdb37823-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/autoscaler:v1.3.1-ccdb37823-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=autoscaler --tag=v1.3.1-ccdb37823-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/autoscaler:v1.3.1-ccdb37823-aliyun_conv
echo flexvolume:v1.18.8.166-b39c52a-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.18.8.166-b39c52a-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=flexvolume --tag=v1.18.8.166-b39c52a-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.18.8.166-b39c52a-aliyun_conv
echo agent:v1.13.1.21-g2c50771-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/agent:v1.13.1.21-g2c50771-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=agent --tag=v1.13.1.21-g2c50771-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/agent:v1.13.1.21-g2c50771-aliyun_conv
echo gpu-prometheus-exporter:0.1-c7dd8d4 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/gpu-prometheus-exporter:0.1-c7dd8d4_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=gpu-prometheus-exporter --tag=0.1-c7dd8d4
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/gpu-prometheus-exporter:0.1-c7dd8d4_conv
echo k8s-gpushare-plugin:v1.0.0-c3a1bb8-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/k8s-gpushare-plugin:v1.0.0-c3a1bb8-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=k8s-gpushare-plugin --tag=v1.0.0-c3a1bb8-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/k8s-gpushare-plugin:v1.0.0-c3a1bb8-aliyun_conv
echo kube-scheduler:v1.16.9-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-scheduler:v1.16.9-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-scheduler --tag=v1.16.9-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-scheduler:v1.16.9-aliyun.1_conv
echo gpushare-device-plugin:v2.1.0-7b42b8c >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/gpushare-device-plugin:v2.1.0-7b42b8c_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=gpushare-device-plugin --tag=v2.1.0-7b42b8c
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/gpushare-device-plugin:v2.1.0-7b42b8c_conv
echo kube-proxy:v1.16.9-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.16.9-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-proxy --tag=v1.16.9-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.16.9-aliyun.1_conv
echo csi-provisioner:v1.6.0-e360c7e43-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/csi-provisioner:v1.6.0-e360c7e43-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=csi-provisioner --tag=v1.6.0-e360c7e43-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/csi-provisioner:v1.6.0-e360c7e43-aliyun_conv
echo kube-proxy:v1.12.6-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.12.6-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-proxy --tag=v1.12.6-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.12.6-aliyun.1_conv
echo k8s-device-plugin:v1.0.0.1-12c5eb3-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/k8s-device-plugin:v1.0.0.1-12c5eb3-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=k8s-device-plugin --tag=v1.0.0.1-12c5eb3-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/k8s-device-plugin:v1.0.0.1-12c5eb3-aliyun_conv
echo kube-apiserver:v1.20.4-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-apiserver:v1.20.4-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-apiserver --tag=v1.20.4-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-apiserver:v1.20.4-aliyun.1_conv
echo kube-proxy:v1.14.8-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.14.8-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-proxy --tag=v1.14.8-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-proxy:v1.14.8-aliyun.1_conv
echo kube-eventer-amd64:v1.2.4-0f5aaee-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-eventer-amd64:v1.2.4-0f5aaee-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-eventer-amd64 --tag=v1.2.4-0f5aaee-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-eventer-amd64:v1.2.4-0f5aaee-aliyun_conv
echo serving-cmd-queue:20200904154738_ask-release-0.13_ad9aafa8 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/serving-cmd-queue:20200904154738_ask-release-0.13_ad9aafa8_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=serving-cmd-queue --tag=20200904154738_ask-release-0.13_ad9aafa8
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/serving-cmd-queue:20200904154738_ask-release-0.13_ad9aafa8_conv
echo cloud-controller-manager-amd64:v1.9.3.380-gd6d0962-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/cloud-controller-manager-amd64:v1.9.3.380-gd6d0962-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=cloud-controller-manager-amd64 --tag=v1.9.3.380-gd6d0962-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/cloud-controller-manager-amd64:v1.9.3.380-gd6d0962-aliyun_conv
echo virtual-nodes-eci:v2.0.0.122-bdb884460-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/virtual-nodes-eci:v2.0.0.122-bdb884460-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=virtual-nodes-eci --tag=v2.0.0.122-bdb884460-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/virtual-nodes-eci:v2.0.0.122-bdb884460-aliyun_conv
echo kubernetes-cronhpa-controller:v1.4.0-a2f4954d-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kubernetes-cronhpa-controller:v1.4.0-a2f4954d-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kubernetes-cronhpa-controller --tag=v1.4.0-a2f4954d-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kubernetes-cronhpa-controller:v1.4.0-a2f4954d-aliyun_conv
echo kube-eventer-init:1.5-5e0e7c1-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-eventer-init:1.5-5e0e7c1-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-eventer-init --tag=1.5-5e0e7c1-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-eventer-init:1.5-5e0e7c1-aliyun_conv
echo flexvolume:v1.11.2.32-af2d48c-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.11.2.32-af2d48c-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=flexvolume --tag=v1.11.2.32-af2d48c-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/flexvolume:v1.11.2.32-af2d48c-aliyun_conv
echo agent:v1.13.1.34-gc6c53f2-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/agent:v1.13.1.34-gc6c53f2-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=agent --tag=v1.13.1.34-gc6c53f2-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/agent:v1.13.1.34-gc6c53f2-aliyun_conv
echo csi-attacher:v2.1.0 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/csi-attacher:v2.1.0_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=csi-attacher --tag=v2.1.0
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/csi-attacher:v2.1.0_conv
echo flannel:v0.11.0.2-g6e46593e-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/flannel:v0.11.0.2-g6e46593e-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=flannel --tag=v0.11.0.2-g6e46593e-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/flannel:v0.11.0.2-g6e46593e-aliyun_conv
echo kubectl:v1.15.0 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kubectl:v1.15.0_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kubectl --tag=v1.15.0
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kubectl:v1.15.0_conv
echo csi-resizer:v0.3.0 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/csi-resizer:v0.3.0_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=csi-resizer --tag=v0.3.0
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/csi-resizer:v0.3.0_conv
echo kube-rbac-proxy:v0.4.1-bbc79f2e-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-rbac-proxy:v0.4.1-bbc79f2e-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-rbac-proxy --tag=v0.4.1-bbc79f2e-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-rbac-proxy:v0.4.1-bbc79f2e-aliyun_conv
echo check-hosts:480c740a4 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/check-hosts:480c740a4_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=check-hosts --tag=480c740a4
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/check-hosts:480c740a4_conv
echo coredns:v1.7.0.0-f59c03d-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/coredns:v1.7.0.0-f59c03d-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=coredns --tag=v1.7.0.0-f59c03d-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/coredns:v1.7.0.0-f59c03d-aliyun_conv
echo k8s-gpushare-schd-extender:v1.0.1-4e418f1-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/k8s-gpushare-schd-extender:v1.0.1-4e418f1-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=k8s-gpushare-schd-extender --tag=v1.0.1-4e418f1-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/k8s-gpushare-schd-extender:v1.0.1-4e418f1-aliyun_conv
echo kube-state-metrics:v1.6.0-f4ec1f70-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/kube-state-metrics:v1.6.0-f4ec1f70-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=kube-state-metrics --tag=v1.6.0-f4ec1f70-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/kube-state-metrics:v1.6.0-f4ec1f70-aliyun_conv
echo ack-kms-plugin:v1.0.1.0-g66f73e3-aliyun >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/ack-kms-plugin:v1.0.1.0-g66f73e3-aliyun_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=ack-kms-plugin --tag=v1.0.1.0-g66f73e3-aliyun
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/ack-kms-plugin:v1.0.1.0-g66f73e3-aliyun_conv
echo node-exporter:v0.17.0 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/node-exporter:v0.17.0_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=node-exporter --tag=v0.17.0
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/node-exporter:v0.17.0_conv
echo rogue-agent:v1.20.4-aliyun.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/rogue-agent:v1.20.4-aliyun.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=rogue-agent --tag=v1.20.4-aliyun.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/rogue-agent:v1.20.4-aliyun.1_conv
echo csi-node-driver-registrar:v1.2.0 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/csi-node-driver-registrar:v1.2.0_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=csi-node-driver-registrar --tag=v1.2.0
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/csi-node-driver-registrar:v1.2.0_conv
echo heapster-influxdb-amd64:v1.1.1 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/heapster-influxdb-amd64:v1.1.1_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=heapster-influxdb-amd64 --tag=v1.1.1
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/heapster-influxdb-amd64:v1.1.1_conv
echo busybox:v1.29.2 >> test.log
sudo ~/accelerated-container-image/bin/ctr rpull registry.cn-hangzhou.aliyuncs.com/qitest/busybox:v1.29.2_conv | egrep 'elapsed|done:' |  tail -1 >> test.log
sudo ./test --name=busybox --tag=v1.29.2
sudo ctr rm i registry.cn-hangzhou.aliyuncs.com/qitest/busybox:v1.29.2_conv
