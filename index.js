import core from '@actions/core';
import slackifyMarkdown from 'slackify-markdown';

try {
  const md = core.getInput('text', { required: true });
  const mrkdwn = slackifyMarkdown(md);
  core.setOutput('text', mrkdwn);
} catch (error) {
  core.setFailed(error.message);
}
