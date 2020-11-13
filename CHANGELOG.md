# Change Log

All notable changes to this project will be documented in this file.

## [Unreleased][unreleased]
### Added
- Includes support for more AWS APIs.

### Changed
- Improve documentation by using more markdown and removing HTML tags.

## [v0.6.0] - 2020-08-20
### Added
- Includes support for more AWS APIs.

### Fixed
- Pass security token for signed POST requests.

## [v0.5.0] - 2017-03-07
### Fixed
- `AWS.APIGateway` module uses a service URL without a trailing slash
  (apparently AWS behaviour with regard to URL signing is
  inconsistent). Thanks Richard Foster (@zuren).

## [v0.4.0] - 2017-03-06
### Added
- `AWS.AppStream` module for AWS AppStream service.
- `AWS.Batch` module for AWS Batch service.
- `AWS.Budgets` module for AWS Budgets service.
- `AWS.CloudDirectory` module for AWS CloudDirectory service.
- `AWS.CodeBuild` module for AWS CodeBuild service.
- `AWS.CostAndUsageReport` module for AWS Cost and Usage Report service.
- `AWS.Health` module for AWS Health service.
- `AWS.Kinesis.Analytics` module for Kinesis Analytics service.
- `AWS.LexRuntime` module for AWS Lex Runtime service.
- `AWS.Lightsail` module for AWS Lightsail service.
- `AWS.MechanicalTurk` module for AWS Mechanical Turk service.
- `AWS.OpsWorks.ChefAutomate` module for AWS OpsWorks for Chef Automate
  service.
- `AWS.Organizations` module for AWS Organizations service.
- `AWS.Polly` module for AWS Polly service.
- `AWS.Rekognition` module for AWS Rekognition service.
- `AWS.Shield` module for AWS Shield service.
- `AWS.SMS` moduule for AWS Server Migration service.
- `AWS.Snowball` module for AWS Snowball service.
- `AWS.StepFunctions` module for AWS Step Functions service.
- `AWS.WAF.Regional` module for WAF Regional service.
- `AWS.XRay` module for AWS X-Ray service.

### Changed
- Elixir 1.4 with Erlang 19.1 are the minimally supported versions of Elixir
  and Erlang/OTP.
- README has been simplified and improved. Thanks Paulo Ancheta
  (@pauloancheta).
- Bumped `httpoison` dependency from `~> 0.10.0` to `~> 0.11.1`. Thanks Wojtek
  Piekutowski (@wpiekutowski).
- Bumped `poison` dependency from `~> 1.5 or ~> 2.0` to `~> 3.1`.
- Bumped `timex` dependency from `~> 2.1` to `~> 3.1`. Thanks Christian
  Blavier (@cblavier).
- `AWS.APIGateway` module has updated documentation and support for managing
  documentation parts and versions, usage plans and keys, getting SDK types
  and importing API keys.
- `AWS.AutoScaling` module has updated documentation.
- `AWS.CertificateManager` module has updated documentation.
- `AWS.CloudTrail` module has updated documentation and support for event
  selectors.
- `AWS.CodeCommit` module has updated documentation and support for blobs and
  differences.
- `AWS.CodeDeploy` module has updated documentation and support for skipping
  wait times before terminating instances in blue/green deployments.
- `AWS.CodePipeline` module has updated documentation and support for getting
  pipeline executions.
- `AWS.Cognito` module has updated documentation.
- `AWS.Cognito.IdentityProvider` module has updated documentation and support
  for admin operations.
- `AWS.Config` module has updated documentation and support for evaluations
  results.
- `AWS.DeviceFarm` module has updated documentation and support for managing
  remote access sessions.
- `AWS.DirectConnect` module has updated documentation and support for
  managing hosted connections, lag and BGP peers.
- `AWS.DirectoryService` module has updated documentation and support for
  managing schema extensions.
- `AWS.Discovery` module has updated documentation and support for managing
  application configuration and fetching summaries.
- `AWS.DMS` module has updated documentation and support for modifying
  replication tasks.
- `AWS.DynamoDB` module has updated documentation and support for managing
  resource tags and managing the lifetime of individual table items.
- `AWS.DynamoDB.Streams` has updated documentation.
- `AWS.ECR` module has updated documentation and support for describing
  images.
- `AWS.ECS` module has updated documentation and support for managing
  attributes and updating container instance states.
- `AWS.EFS` module has updated documentation.
- `AWS.EMR` module has updated documentation and support for canceling steps
  and managing security configuration and auto scaling policy.
- `AWS.GameLift` module has updated documentation and support for managing
  instances, game session queues and game session placement.
- `AWS.Glacier` module has updated documentation and support for purchasing
  provisions capacity.
- `AWS.IoT` module has updated documentation and support for managing thing
  types and outgoing certificates.
- `AWS.Kinesis` module has updated documentation and support for managing
  limits.
- `AWS.Kinesis.Firehose` module has updated documentation.
- `AWS.KMS` module has updated documentation and support for import parameters
  and resource tags.
- `AWS.Lambda` module has updated documentation and support for managing
  account settings.
- `AWS.Logs` module has updated documentation and support for log group tags.
- `AWS.MachineLearning` module has updated documentation.
- `AWS.Marketplace.CommerceAnalytics` module has updated documentation and
  support for starting support data export.
- `AWS.Marketplace.Metering` module has updated documentation and support for
  batch metering and resolving customers.
- `AWS.OpsWorks` module has updated documentation.
- `AWS.Route53.Domains` module has updated documentation and support for
  domain suggestions, billing and domain renewal.
- `AWS.ServiceCatalog` module has updated documentation and support for
  portfolios, products and constraints.
- `AWS.SSM` module has updated documentation and support for maintenance
  windows, parameters and patch baselines.
- `AWS.StorageGateway` module has updated documentation and support for NFS
  file shares.
- `AWS.Support` module has updated documentation.
- `AWS.WAF` module has updated documentation.
- `AWS.Workspaces` module has updated documentation and support for workspace
  properties and connection status.

## [v0.3.0] - 2016-12-11
### Changed
- Bumped `httpoison` dependency from `~0.9.1` to `~0.10.0`.

## [v0.2.0] - 2016-08-20
### Changed
- Bumped `httpoison` dependency from `~0.8.0` to `~0.9.1` to be compatible
  with Elixir 1.3.2.

## [v0.1.0] - 2016-07-13
### Added
- `AWS.AutoScaling` module for AWS Auto Scaling service.
- `AWS.CertificateManager` module has support for adding, listing and removing
  tags from certificates along with updated documentation.
- `AWS.CloudHSM` module has updated documentation.
- `AWS.CloudTrail` module has updated documentation.
- `AWS.CodePipeline` module has support for putting approval results, retrying
  stage execution and updated documentation.
- `AWS.Config` module has support to delete configuration recorders and
  updated documentation.
- `AWS.DirectConnect` module has support to fetch letters of authorization for
  connections and interconnects and has updated documentation.
- `AWS.DirectoryService` module has support to add, list and remove tags from
  resources.
- `AWS.Discovery` module for AWS Application Discovery Service.
- `AWS.DMS` module has support to import, delete and describe certifications
  and has updated documentation.
- `AWS.DynamoDB` module has updated documentation.
- `AWS.DyanamoDB.Streams` module has updated documentation.
- `AWS.ECS` module has updated documentation.
- `AWS.EFS` module has updated documentation.
- `AWS.GameLift` module has support to describe and update a runtime
  configuration for a fleet and has updated documentation.
- `AWS.Inspector` module has updated documentation.
- `AWS.IoT` module has support to list policy principals and has updated
  documentation.
- `AWS.Kinesis.Firehose` module has updated documentation.
- `AWS.KMS` module has updated documentation.
- `AWS.MachineLearning` module has support to add, describe and delete tags on
  an object and has updated documentation.
- `AWS.OpsWorks` module has updated documentation.
- `AWS.Route53.Domains` module has support to get and resent contact
  reachability status and has updated documentation.
- `AWS.ServiceCatalog` module for AWS Service Catalog service.
- `AWS.SSM` module has support to add, list and remove tags from resources, to
  create, describe and delete activations, to deregister managed instances, to
  describe and modify document permissions, to update managed instance roles
  and has updated documentation.
- `AWS.StorageGateway` module has support to list taps and has updated
  documentation.
- `AWS.Workspaces` module has support to create, describe and delete tags.

### Removed
- `AWS.CognitoIdentityProvider` module removes support to get JSON web keys or
  OpenID configuration information for user pools.

## [v0.0.12] - 2016-07-13
### Changed
- Bumped `poison` dependency from `~1.0` to `~1.5 or ~2.0` to be compatible
  with the latest version of Phoenix.

## [v0.0.11] - 2016-04-21
### Added
- `AWS.CertificateManager` module for AWS Certificate Manager service.
- `AWS.CloudWatch.Events` module for AWS CloudWatch Events service.
- `AWS.Cognito.IdentityProvider` module for AWS Cognito Identity Provider
  service.
- `AWS.DMS` module for AWS Database Migration Service.
- `AWS.ECR` module for AWS EC2 Container Registry service.
- `AWS.Inspector` module for AWS Inspector service.
- `AWS.IoT` module for AWS IoT service.
- `AWS.IoT.DataPlane` module for AWS IoT Data Plane service.
- `AWS.Kinesis.Firehose` module for AWS Kinesis Firehose service.
- `AWS.MachineLearning` module for AWS Machine Learning service.
- `AWS.Marketplace.Metering` module for AWS Marketplace Metering service.

### Changed
- `AWS.CodePipeline` module has updated documentation.
- `AWS.Cognito` module has updated documentation.
- `AWS.DirectoryService` module has support for creating, deleting, describing
  and updating conditional forwarders.
- `AWS.Kinesis` module has updated documentation and enabling and disabling
  enhanced monitoring.
- `AWS.MCA` module has been renamed to `AWS.Marketplace.CommerceAnalytics`.
- `AWS.StorageGateway` module has updated documentation.
- `AWS.WAF` module has support for creating, deleting, getting, listing and
  updating XSS match sets.
- Timex dependency upgrade from 1.x to 2.x (Fixes #40).
- Bump minimum Elixir version to 1.2.

### Fixed
- Link to `aws-codegen` added and broken AWS SDK specification links fixed in
  README. Thanks Brenton Annan (@brentonannan).

## [v0.0.10] - 2016-03-22
### Added
- `AWS.CloudHSM` module has support to add, list and remove tags on resources.
- `AWS.CodeCommit` module has support for getting commits, and working with
  repository triggers.
- `AWS.CodeDeploy` module has support for batch operations related to
  application revisions, deployment groups and deployment instances.
- `AWS.DeviceFarm` module has support for offering status, offering
  transactions, offerings and stopping of runs.
- `AWS.DirectoryService` module has support managing event topics.
- `AWS.GameLift` module has support for managing game session details and
  scaling policies.
- `AWS.StorageGateway` module has support for creating tapes with barcodes.

### Fixed
- `AWS.Cognito.Sync` module uses header locations instead of parameter names
  when making requests.
- `AWS.Glacier` module uses header locations instead of parameter names when
  making requests and processing responses.
- `AWS.Lambda` module uses header locations instead of parameter names when
  making requests and processing responses.
- `AWS.MobileAnalytics` module uses header locations instead of parameter
  names when making requests.

## [v0.0.9] - 2016-03-22
### Removed
- `AWS.CloudSearch.Domain` module has been removed because it doesn't work
  correctly and adding support for it to the code generator not a priority.

## [v0.0.8] - 2016-02-09
### Added
- `AWS.GameLift` module for AWS GameLift service.
- `AWS.MCA` module for AWS Marketplace Commerce Analytics service.
- `AWS.WAF` module for AWS Web Application Firewall service.
- Experimental/unstable support for generating v4 signatures that can be
  embedded in query strings is taking shape in `AWS.Request.sign_v4_query`.

### Changed
- Requests that error now return `{:error, {exception, message}}` 2-tuples
  instead of the `{:error, exception}` 2-tuples that were returned before.

## [v0.0.7] - 2016-01-13
### Fixed
- Trailing slashes that were causing signing errors in generated URLs in the
  Lambda client have been removed. Thanks Akash Manohar aka @HashNuke.
- REST-JSON clients, including `AWS.CloudSearchDomain`, `AWS.CognitoSync`,
  `AWS.EFS`, `AWS.Glacier`, `AWS.Lambda`, `AWS.MobileAnalytics` and
  `AWS.Transcoder` correctly handle responses with empty bodies. Thanks Akash
  Manohar (@HashNuke).

## [v0.0.6] - 2016-01-06
### Added
- `AWS.DirectoryService` module has new functionality for managing and
  verifying trust relationships.
- `AWS.Client` has new `proto` and `port` members that can be used to create a
  client that is suitable for use with Local DynamoDB. In this situation, the
  region should be set to `local`, the protocol to `http` and the port should
  match the running Local DynamoDB instance.
- `AWS.ECS` has updated documentation.
- `AWS.Logs` has updated documentation.
- `AWS.SSM` has updated documentation.

### Changed
- Services return an `{:ok, nil, response}` 3-tuple, instead of the `{:ok,
  response}` 2-tuple that was previously returned, when an AWS service
  endpoint returns a successful HTTP status with an empty response body.
- Relax `Poison` dependency to 1.2.0 to maintain compatibility with
  [ex_aws](https://hex.pm/packages/ex_aws).

## [v0.0.5] - 2015-11-06
### Changed
- All services return a `{:error, reason, response}` tuple when an
  unsuccessful HTTP status code is returned (previously the `response` was not
  included).

### Fixed
- An empty body returned alongside an HTTP 200 from an AWS service isn't
  parsed by Poison (which was causing exceptions to be raised). Thanks Mike
  Coleman (@fivebats).

## [v0.0.4] - 2015-08-05
### Added
- `AWS.CloudSearch.Domain` module for Cloud Search Service.
- `AWS.Cognito.Sync` module for Cognito Sync Service.
- `AWS.DeviceFarm` module for DeviceFarm Service.
- `AWS.EFS` module for Elastic File System Service.
- `AWS.Glacier` module for Glacier Service.
- `AWS.Lambda` module for Lambda Service.
- `AWS.MobileAnalytics` module for Mobile Analytics Service.
- `AWS.Transcoder` module for Elastic Transcoder Service.

### Changed
- `AWS.CloudHSM` module has updated documentation.
- `AWS.CognitoIdentity` module has been renamed to `AWS.Cognito`.
- `AWS.Logs` module has support for new `DeleteDestination`,
  `DescribeDestinations`, `PutDestination` and `PutDestinationPolicy` actions.
- `AWS.OpsWorks` module has updated documentation and new support for the
  `DeregisterEcsCluster`, `DescribeEcsClusters` and `RegisterEcsCluster`
  actions.
- `AWS.Route53Domains` module has been renamed to `AWS.Route53.Domains`.
- `AWS.StorageGateway` module has updated documentation.

## [v0.0.3] - 2015-07-14
### Added
- `AWS.DynamoDB.Streams` module for DynamoDB Streams Service.

### Changed
- `AWS.DynamoDB` module has updated documentation.

## [v0.0.2] - 2015-07-09
### Added
- `AWS.CodeCommit` module for CodeCommit Service.
- `AWS.CodePipeline` module for CodePipeline Service.
- `AWS.CognitoIdentity` module for Cognito Service.
- `AWS.DirectoryService` module for Directory Service.
- `AWS.Route53Domains` module for Route53 Domains Service.
- `AWS.Workspaces` module for Workspaces Service.

### Changed
- `AWS.CodeDeploy` module has new functionality for managing on premises
  instances.
- `AWS.Config` module has updated documentation.
- `AWS.DynamoDB` module has updated documentation.
- `AWS.ECS` module has updated documentation and new support for the
  `UpdateContainerAgent` action.
- `AWS.Kinesis` module has updated documentation.
- `AWS.KMS` module has updated documentation and new support for the
  `UpdateAlias` action.
- `AWS.Logs` module has updated documentation and new functionality for
  managing log events and subscription filters.
- `AWS.OpsWorks` module has updated documentation and new support for the
  `DescribeAgentVersions` and `GrantAccess` actions.
- `AWS.SSM` module has updated documentation.
- `AWS.StorageGateway` module has updated documentation and new support for
  the `ListVolumeInitiators` action.

## [v0.0.1](https://github.com/jkakar/aws-elixir/tree/v0.0.1) - 2015-05-29
### Added
- `AWS.CloudHSM` module for CloudHSM Service.
- `AWS.CloudTrail` module for CloudTrail Service.
- `AWS.CodeDeploy` module for CodeDeploy Service.
- `AWS.Config` module for Config Service.
- `AWS.DataPipeline` module for DataPipeline Service.
- `AWS.DirectConnect` module for DirectConnect Service.
- `AWS.DynamoDB` module for DynamoDB Service.
- `AWS.ECS` module for EC2 Container Service.
- `AWS.EMR` module for Elastic MapReduce Service.
- `AWS.KMS` module for Key Management Service.
- `AWS.Kinesis` module for Kinesis Service.
- `AWS.Logs` module for CloudWatch Logs Service.
- `AWS.OpsWorks` module for OpsWorks Service.
- `AWS.SSM` module for Simple Systems Management Service.
- `AWS.SWF` module for Simple Workflow Service.
- `AWS.StorageGateway` module for Storage Gateway Service
- `AWS.Support` module for Support Service.

[unreleased]: https://github.com/aws-beam/aws-elixir/compare/v0.6.0...HEAD
[v0.6.0]: https://github.com/aws-beam/aws-elixir/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/aws-beam/aws-elixir/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/aws-beam/aws-elixir/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/aws-beam/aws-elixir/compare/v0.2.0...v0.3.0
[v0.2.0]: https://github.com/aws-beam/aws-elixir/compare/v0.1.0...v0.2.0
[v0.1.0]: https://github.com/aws-beam/aws-elixir/compare/v0.0.12...v0.1.0
[v0.0.12]: https://github.com/aws-beam/aws-elixir/compare/v0.0.11...v0.0.12
[v0.0.11]: https://github.com/aws-beam/aws-elixir/compare/v0.0.10...v0.0.11
[v0.0.10]: https://github.com/aws-beam/aws-elixir/compare/v0.0.9...v0.0.10
[v0.0.9]: https://github.com/aws-beam/aws-elixir/compare/v0.0.8...v0.0.9
[v0.0.8]: https://github.com/aws-beam/aws-elixir/compare/v0.0.7...v0.0.8
[v0.0.7]: https://github.com/aws-beam/aws-elixir/compare/v0.0.6...v0.0.7
[v0.0.6]: https://github.com/aws-beam/aws-elixir/compare/v0.0.5...v0.0.6
[v0.0.5]: https://github.com/aws-beam/aws-elixir/compare/v0.0.4...v0.0.5
[v0.0.4]: https://github.com/aws-beam/aws-elixir/compare/v0.0.3...v0.0.4
[v0.0.3]: https://github.com/aws-beam/aws-elixir/compare/v0.0.2...v0.0.3
[v0.0.2]: https://github.com/aws-beam/aws-elixir/compare/v0.0.1...v0.0.2
