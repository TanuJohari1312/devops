# devops
Devops demo

### Unit Tests

Run `python -m pytest -s` from `/src` to run all unit tests.

To have the tests automatically run on file change during development run:
```
pip install pytest-watch
ptw
```

Workflow unit tests can be run with the following command:
```
python -m pytest -s src/test/test_retrieve_aoi_workflow.py --workflow-environment localhost:7233
```

Output all logs at DEBUG level:
```
python -m pytest -s -o log_cli=true -o log_cli_level=DEBUG src/test/test_retrieve_aoi_workflow.py --workflow-environment localhost:7233
```

To generate and validate coverage(locally):
```
python -m pytest --cov --cov-report=html:coverage_re
```
Please find coverage percentage & file-wise detailed report generated at: 
```
coverage_re/index.html
```
### When and how to mark specific tests to skip or fail 

#### Skip 
A skip means that you expect your test to pass only if some conditions are met, otherwise pytest should skip running the test altogether. 

#### xFail
An xfail means that you expect a test to fail for some reason.

You can explicitly mark unit test to be excluded by pytest as skip or xfail, if functionality you are testing satisfy any of the following criteria:
1. Code can be edited locally
1. Write and execute unit tests locally
1. Run your code within the docker containers using `./dse-start.sh`
1. Test your code within workflows by triggering them with the DSE CLI using `dse --run-task`
1. Perform a final end-to-end test using the Dev Agent API


Heading:
```
command
```
Heading:
```
command
```

### How to change from CRLF to LF (on Windows)

git config --global core.eol lf
git config --global core.autocrlf true
git checkout main
git add --renormalize .

## Deploying the Azure Environments

To deploy to the Azure environments:
1. Run the Github Action called `1 Deploy DSE Container Apps`
1. After build completes approve the deployment to `TST`
1. After testing approve the deployment to `UAT`
