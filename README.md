# File Reader Action

Reads the content of the file under the given path and provides it via output.

## Usage

### Inputs

* `file` - The path to the file that will be read

### Outputs

* `content` - The content of the file


### Example workflow

```yaml
name: Example Workflow

on: push

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1

    - name: Read template from file
      id: template
      uses: traversals-analytics-and-intelligence/file-reader-action@master
      with:
        file: ./build/generated/template

    - name: Get the template output
      run: echo "${{ steps.template.outputs.content }}"
```

## License
The scripts and documentation in this project are released under the [MIT License](LICENSE)
