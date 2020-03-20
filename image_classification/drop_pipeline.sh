oc delete pipeline/image-classification
oc delete pipelinerun/image-classification-pipeline-run
oc delete pipelineresource/ic-build-image
oc delete pipelineresource/ic-repo
oc delete task/ic-buildah
oc delete task/ic-run
