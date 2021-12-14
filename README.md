## Overview

This is a sample code for automated API testing using Karate in aws CodeBuild.

There are two types of source code in this repository.

 - api-app
    - A simple Python application to be tested with Karate. This application is assumed to be run on the EC2 server.
    - It includes `buildspec.yml` and `src/appspec.yml` that are configuration files for AWS CodeBuild and CodeDeploy.
 - karate-tool
    - A repository of Karate tools for automated API testing.

## Architecture Diagram

![image](https://user-images.githubusercontent.com/40108006/146018196-afe963cc-2f2f-46f1-b5d3-e244dd00e830.png)

## How to configurate your CI/CD Pipeline in your aws env.

### 0. EC2

Please provision EC2 server that are configured for python application.

### 1. CodeCommit

Set up two repositories in CodeCommit. One is for `api-app`, the other is for `karate-tool`. The idea is to push this repository to multiple repositories.

### 2. CodeBuild

Create a build project in CodeBuild. You can set the `api-app` repository as the primary one. Also, set `karate-tool` as a second source code repository. In this sample, `sourceIdentifer` is `KARATE_CONFIG`.

### 3. CodeDeploy

Create a deploy project in CodeDeploy.

### 4. CodePipeline

Set up a pipeline by selecting created projects and the repository.
