#!/usr/bin/env bash

BROWSER=$1
ENVIRONMENT=$2

sbt scalafmtCheckAll scalafmtSbtCheck clean -Dbrowser="${BROWSER:=chrome}" -Denvironment="${ENVIRONMENT:=local}" -Dbrowser.option.headless=true -Dbrowser.usePreviousVersion=true "testOnly uk.gov.hmrc.ui.specs.* -- -n AcceptanceTests" testReport
