export KUBECONFIG="/project/hoss-mittelstufen-projekt/k3s_kubeconfig.yaml"
helm install nextcloud nextcloud/nextcloud -f values.yaml
kubectl apply -f ingress-nextcloud.yaml
kubectl apply -f issuer.yaml
kubectl apply -f cert.yaml
