# Git Log Action

Saves Git Log Data in GitHub Workflow.

## Inputs

### `start`

The first argument used in `git log` revision range.

### `end`

The last argument used in `git log` revision range.

## Outputs

### `log`

The output of the log command.

## Example

```yml
uses: jarrodparkes/git-log-action@1.0.0
with:
  start: develop
  end: 0ab80e2c4
```
