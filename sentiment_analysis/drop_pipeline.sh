oc delete pipeline/sentiment-analysis
oc delete pipelinerun/sentiment-analysis-pipeline-run
oc delete pipelineresource/sa-build-image
oc delete pipelineresource/sa-repo
oc delete task/sa-buildah
oc delete task/sa-run-benchmark
