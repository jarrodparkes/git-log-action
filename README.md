# Git Log Action

Saves Git Log Data in GitHub Workflow.

## Inputs

### `commit`

The last argument used in `git log` revision range. For example, if `commit=0ab80e2c4`, then the log command would resolve to `git log master..0ab80e2c4 --pretty=format:'%h - %s (%an)'`.

## Outputs

### `log`

The output of the log command.

## Example

```yml
uses: actions/git-log-action
  with:
    commit: 0ab80e2c4
```
