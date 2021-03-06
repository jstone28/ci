# ci

CI Container Image for Build, Test, Version, Tag, and Deploy

## Install

`docker pull jstone28/ci`

## Use

In `Jenkinsfile`:

`agent { docker { image 'jstone28/ci' } }`

## Overview

```text
START --> BUILD --> test --> DEPLOY --> END
```

**Pipeline**:

CI has a recommended built-in pipeline system. The System is comprised of the following steps

`BUILD`:
* Application build
* Container Image build

DEPLOY
* Increment current version based on sem ver branch name prefix
* VERSION file update with current

**Functions**:

`create_changelog_entry` - Adds a CHANGELOG.md entry by parsing the PR description for *##CHANGELOG: text* and applying the content to the file (defaults to *SemVer: Bug Fixes and Performance Improvements*)

`increment_version` -

**Supporting**:

`container_registry_auth    ` - authenticates with the provided container registry (defaults to dockerhub if none is set).

Environment Variables: CI_CONTAINER_REGISTRY_USERNAME, CI_CONTAINER_REGISTRY_PASSWORD, CI_CONTAINER_REGISTRY_URL

git_setup
****
