# Git Log Action

Injects git log output into GitHub workflow environment.

## Inputs

### `start`

**Required** Start git commit object (e.g. SHA, tag, branch name) in revision range (start..end).

### `end`

**Required** End git commit object (e.g. SHA, tag, branch name) in revision range (start..end).

## Outputs

### `log`

Git log output as environment variable LOG.

## Example

```yml
name: Inject git log into environment
id: git-log
uses: jarrodparkes/git-log-action@1.0.0
with:
  start: ${{ github.event.pull_request.base.sha }}
  end: ${{ github.event.pull_request.head.sha }}
```
