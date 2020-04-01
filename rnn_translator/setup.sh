#oc new-project mlperf
oc create -f misc/imagestream.yml
oc create -f pipeline/resources.yml
oc create -f task/buildah.yaml
oc create -f task/dataset.yaml
oc create -f task/run-benchmark.yml
oc create -f pipeline/pipeline.yml
oc create -f storage/dataset-pvc.yml
oc create -f storage/runtime-pvc.yml
