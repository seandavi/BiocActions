# biocIBC

exploring actions-based CI to **i**nstall, **b**uild and **c**heck a Bioconductor package, based on a Docker container with R and limited
CRAN/Bioc provisioning

# biocIBC: a preliminary approach to install/build/check of a Bioconductor package in ubuntu-18.04

Artifacts are produced including 

## Inputs

### pkg-to-get-deps

**Required** The name of the person to greet. Default `'Biobase'`.

## Outputs

### `deps`

A JSON string providing information on the Bioconductor version in use,
the query package, and the declared dependencies of that package

## Example usage
```
uses: actions/listdeps@v1
with:
  pkg-to-get-deps: 'ROC'
