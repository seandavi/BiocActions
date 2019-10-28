# BiocActions

Develop and host GitHub actions for Bioconductor

# Contributions

- [Create an issue proposing a new action](https://github.com/seandavi/BiocActions/issues/new?template=new_action)

# Usage

To use one of the BiocActions in your own workflow, 
create a workflow file that looks something like this. 

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: A job to say hello
    steps:
    # To use this repository's private action, you must check out the repository
    - name: Checkout
      uses: actions/checkout@v1
    - name: Hello world action step
      id: hello
      uses: seandavi/BiocActions/inst/actions/hello-world-docker-action@master
      with:
        who-to-greet: 'Mona the Octocat'
    # Use the output from the `hello` step
    - name: Get the output time
      run: echo "The time was ${{ steps.hello.outputs.time }}"
```

As a reminder, workflows are always placed in 
`.github/workflows/workflow_name.yml`. An example 
repository that uses this idea is [here](https://github.com/seandavi/example_BiocActions_package/blob/master/.github/workflows/main.yml).
