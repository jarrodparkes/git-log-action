FROM debian:9.8-slim

LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/jarrodparkes/git-log-action"
LABEL "homepage"="https://github.com/jarrodparkes/git-log-action"
LABEL "maintainer"="Jarrod Parkes <parkesfjarrod@gmail.com>"
LABEL "com.github.actions.name"="Git Log Action"
LABEL "com.github.actions.description"="Saves Git Log Data in GitHub Workflow"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

# Install Git
RUN apt-get update && apt-get install -y git

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]