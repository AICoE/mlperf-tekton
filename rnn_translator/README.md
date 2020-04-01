# Running rnn translator in a tekton Pipeline with Openshift

## Getting started

**Requirements**
- An Openshift cluster with 60 GB memory and 32 cpu cores.


## Running rnn translator

### Starting and stopping the pipeline

To setup the pipeline, run the setup script.
`./setup.sh`

To run the pipeline, execute the run script.
`./run_pipeline.sh`

To delete the pipeline resources, run the drop script.  
`./drop_pipeline.sh`

## Analyzing rnn translator

To get the logs from the benchmark run, as well as the final result, run the get_logs script  
`./get_logs.sh`

The file `logs.txt` will contain the entirety of the output from when the benchmark was run, and `result.txt` will give you the final results.

### About the pipeline process

The pipeline is comprised of three tasks, `build`, `dataset`, and `run-benchmark`.
Once the pipeline run is triggered, it starts with the build task and will build a new image with all the tools necessary for running rnn_translator.  
After the build is finished, the pipeline will download the dataset, and compare md5sum values to validate it.
Once the dataset has been gathered, the pipeline will then run the container image. This image will time how long it takes to run the benchmark, and tell you at the end.  
To track the progress of your tasks, you can use the cluster UI under Workloads > Pods > <your pod> > Logs.  

### About the rnn translator benchmark
The dataset for this benchmark is 12.8GB of text.
See the [mlperf repo](https://github.com/mlperf/training/tree/master/image_classification/tensorflow) for more information about the benchmark.  
