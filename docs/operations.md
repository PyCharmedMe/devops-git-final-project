# Operations Runbook

## Production Baseline

The production environment should use the following baseline settings.

### Application

- Environment: production
- Application port: 8080
- Health checks must remain enabled

### Monitoring

- Check interval: 30 seconds
- Timeout: 5 seconds
- Retry count: 3
- Alert threshold: 80 percent

### Logging

- Log level: INFO
- Log path: logs/app.log
- Maximum log size: 10 MB
- Retention: 7 days

## Operational Guidelines

Before changing production configuration:

1. Check the current Git branch.
2. Review the working tree with `git status`.
3. Review configuration changes with `git diff`.
4. Use a meaningful commit message.
5. Confirm the repository is clean after the change.

## Troubleshooting

When unexpected behavior appears after a change:

1. Inspect recent repository history.
2. Identify which files were changed.
3. Compare the current configuration with previous versions.
4. Choose a recovery method appropriate for the repository state.