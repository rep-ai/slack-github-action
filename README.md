# Slack Github Action

Converts Github markdown to slack mrkdwn.

## Inputs

### `text`

**Required** The markdown to convert.

## Outputs

### `text`

The converted text.

## Example usage

```yaml
uses: rep-ai/slack-github-action@v1.1
with:
  text: |
    # Heading 1

    ## Heading 2

    - List item 1
    - List item 2

    [Link](https://example.com)
```
