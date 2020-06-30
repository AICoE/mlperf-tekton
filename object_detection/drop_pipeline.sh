oc delete pipeline/object-detection
oc delete pipelinerun/object-detection-pipeline-run
oc delete pipelineresource/od-build-image
oc delete pipelineresource/od-repo
oc delete task/od-buildah
oc delete task/od-run
oc delete task/od-dataset
