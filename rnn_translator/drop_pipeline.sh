oc delete pipeline/rnn-translator
oc delete pipelinerun/rnn-translator-pipeline-run
oc delete pipelineresource/rnn-build-image
oc delete pipelineresource/rnn-repo
oc delete task/rnn-buildah
oc delete task/rnn-dataset
oc delete task/rnn-run
