# listdeps:  a github action, docker-based, to list dependencies of a bioc package

This action returns JSON providing information on the Bioconductor version in use,
the query package, and the declared dependencies of that package

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
```
