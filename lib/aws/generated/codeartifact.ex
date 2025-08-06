# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codeartifact do
  @moduledoc """
  CodeArtifact is a fully managed artifact repository compatible with
  language-native
  package managers and build tools such as npm, Apache Maven, pip, and dotnet.

  You can use CodeArtifact to
  share packages with development teams and pull packages. Packages can be pulled
  from both
  public and CodeArtifact repositories. You can also create an upstream
  relationship between a CodeArtifact
  repository and another repository, which effectively merges their contents from
  the point of
  view of a package manager client.

  ## CodeArtifact concepts

    *

  **Repository## : A CodeArtifact repository contains a set of [package versions](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version),
  each of which maps to a set of assets, or files. Repositories are
  polyglot, so a single repository can contain packages of any supported type.
  Each
  repository exposes endpoints for fetching and publishing packages using tools
  such as the 
  `npm`
  ##  CLI or the Maven CLI (
  `mvn`
  **). For a list of supported package managers, see the
  [CodeArtifact User Guide](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html).

    *

  **Domain**: Repositories are aggregated into a higher-level entity known as a
  *domain*. All package assets and metadata are stored in the domain,
  but are consumed through repositories. A given package asset, such as a Maven
  JAR file, is
  stored once per domain, no matter how many repositories it's present in. All of
  the assets
  and metadata in a domain are encrypted with the same customer master key (CMK)
  stored in
  Key Management Service (KMS).

  Each repository is a member of a single domain and can't be moved to a
  different domain.

  The domain allows organizational policy to be applied across multiple
  repositories, such as which accounts can access repositories in the domain, and
  which public repositories can be used as sources of packages.

  Although an organization can have multiple domains, we recommend a single
  production
  domain that contains all published artifacts so that teams can find and share
  packages
  across their organization.

    *

  **Package**: A *package* is a bundle of software and the metadata required to
  resolve dependencies and install the software. CodeArtifact supports npm, PyPI,
  Maven, NuGet, Swift, Ruby, Cargo, and generic package formats.
  For more information about the supported package formats and how to use
  CodeArtifact with them, see the
  [CodeArtifact User Guide](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html).

  In CodeArtifact, a package consists of:

      *
  A *name* (for example, `webpack` is the name of a
  popular npm package)

      *
  An optional namespace (for example, `@types` in `@types/node`)

      *
  A set of versions (for example, `1.0.0`, `1.0.1`,
  `1.0.2`, etc.)

      *
  Package-level metadata (for example, npm tags)

    *

  **Package group**: A group of packages that match a specified definition.
  Package
  groups can be used to apply configuration to multiple packages that match a
  defined pattern using
  package format, package namespace, and package name. You can use package groups
  to more conveniently
  configure package origin controls for multiple packages. Package origin controls
  are used to block or allow ingestion or publishing
  of new package versions, which protects users from malicious actions known as
  dependency substitution attacks.

    *

  **Package version**: A version of a package, such as `@types/node 12.6.9`. The
  version number
  format and semantics vary for different package formats. For example, npm
  package versions
  must conform to the [Semantic Versioning specification](https://semver.org/). In CodeArtifact, a package version consists
  of the version identifier,
  metadata at the package version level, and a set of assets.

    *

  **Upstream repository**: One repository is *upstream* of another when the
  package versions in
  it can be accessed from the repository endpoint of the downstream repository,
  effectively
  merging the contents of the two repositories from the point of view of a client.
  CodeArtifact
  allows creating an upstream relationship between two repositories.

    *

  **Asset**: An individual file stored in CodeArtifact associated with a package
  version, such as an npm
  `.tgz` file or Maven POM and JAR files.

  ## CodeArtifact supported API operations

    *

  `AssociateExternalConnection`: Adds an existing external
  connection to a repository.

    *

  `CopyPackageVersions`: Copies package versions from one
  repository to another repository in the same domain.

    *

  `CreateDomain`: Creates a domain.

    *

  `CreatePackageGroup`: Creates a package group.

    *

  `CreateRepository`: Creates a CodeArtifact repository in a domain.

    *

  `DeleteDomain`: Deletes a domain. You cannot delete a domain that contains
  repositories.

    *

  `DeleteDomainPermissionsPolicy`: Deletes the resource policy that is set on a
  domain.

    *

  `DeletePackage`: Deletes a package and all associated package versions.

    *

  `DeletePackageGroup`: Deletes a package group. Does not delete packages or
  package versions that are associated with a package group.

    *

  `DeletePackageVersions`: Deletes versions of a package. After a package has
  been deleted, it can be republished, but its assets and metadata cannot be
  restored
  because they have been permanently removed from storage.

    *

  `DeleteRepository`: Deletes a repository.

    *

  `DeleteRepositoryPermissionsPolicy`: Deletes the resource policy that is set on
  a repository.

    *

  `DescribeDomain`: Returns a `DomainDescription` object that
  contains information about the requested domain.

    *

  `DescribePackage`: Returns a
  [PackageDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html) object that contains details about a package.

    *

  `DescribePackageGroup`: Returns a
  [PackageGroup](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroup.html)
  object that contains details about a package group.

    *

  `DescribePackageVersion`: Returns a
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  object that contains details about a package version.

    *

  `DescribeRepository`: Returns a `RepositoryDescription` object
  that contains detailed information about the requested repository.

    *

  `DisposePackageVersions`: Disposes versions of a package. A package version
  with the status `Disposed` cannot be restored because they have been
  permanently removed from storage.

    *

  `DisassociateExternalConnection`: Removes an existing external connection from a
  repository.

    *

  `GetAssociatedPackageGroup`: Returns the most closely associated package group
  to the specified package.

    *

  `GetAuthorizationToken`: Generates a temporary authorization token for accessing
  repositories in the domain. The token expires the authorization period has
  passed.
  The default authorization period is 12 hours and can be customized to any length
  with a maximum of 12 hours.

    *

  `GetDomainPermissionsPolicy`: Returns the policy of a resource
  that is attached to the specified domain.

    *

  `GetPackageVersionAsset`: Returns the contents of an asset that is in a package
  version.

    *

  `GetPackageVersionReadme`: Gets the readme file or descriptive text for a
  package version.

    *

  `GetRepositoryEndpoint`: Returns the endpoint of a repository for a specific
  package format. A repository has one endpoint for each
  package format:

      *

  `cargo`

      *

  `generic`

      *

  `maven`

      *

  `npm`

      *

  `nuget`

      *

  `pypi`

      *

  `ruby`

      *

  `swift`

    *

  `GetRepositoryPermissionsPolicy`: Returns the resource policy that is set on a
  repository.

    *

  `ListAllowedRepositoriesForGroup`: Lists the allowed repositories for a package
  group that has origin configuration set to `ALLOW_SPECIFIC_REPOSITORIES`.

    *

  `ListAssociatedPackages`: Returns a list of packages associated with the
  requested package group.

    *

  `ListDomains`: Returns a list of `DomainSummary` objects. Each
  returned `DomainSummary` object contains information about a domain.

    *

  `ListPackages`: Lists the packages in a repository.

    *

  `ListPackageGroups`: Returns a list of package groups in the requested domain.

    *

  `ListPackageVersionAssets`: Lists the assets for a given package version.

    *

  `ListPackageVersionDependencies`: Returns a list of the direct dependencies for
  a
  package version.

    *

  `ListPackageVersions`: Returns a list of package versions for a specified
  package in a repository.

    *

  `ListRepositories`: Returns a list of repositories owned by the Amazon Web
  Services account that called this method.

    *

  `ListRepositoriesInDomain`: Returns a list of the repositories in a domain.

    *

  `ListSubPackageGroups`: Returns a list of direct children of the specified
  package group.

    *

  `PublishPackageVersion`: Creates a new package version containing one or more
  assets.

    *

  `PutDomainPermissionsPolicy`: Attaches a resource policy to a domain.

    *

  `PutPackageOriginConfiguration`: Sets the package origin configuration for a
  package, which determine
  how new versions of the package can be added to a specific repository.

    *

  `PutRepositoryPermissionsPolicy`: Sets the resource policy on a repository
  that specifies permissions to access it.

    *

  `UpdatePackageGroup`: Updates a package group. This API cannot be used to update
  a package group's origin configuration or pattern.

    *

  `UpdatePackageGroupOriginConfiguration`: Updates the package origin
  configuration for a package group.

    *

  `UpdatePackageVersionsStatus`: Updates the status of one or more versions of a
  package.

    *

  `UpdateRepository`: Updates the properties of a repository.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_package_group_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type describe_package_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type update_package_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_version_assets_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("namespace") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("packageVersion") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type list_package_version_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_groups_result() :: %{
        "nextToken" => String.t() | atom(),
        "packageGroups" => list(package_group_summary())
      }

  """
  @type list_package_groups_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_versions_status_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type update_package_versions_status_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_version_assets_result() :: %{
        "assets" => list(asset_summary()),
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "package" => String.t() | atom(),
        "version" => String.t() | atom(),
        "versionRevision" => String.t() | atom()
      }

  """
  @type list_package_version_assets_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_package_group_request() :: %{
        optional("contactInfo") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("domainOwner") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type create_package_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_version_dependencies_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("packageVersion") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type list_package_version_dependencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_result() :: %{}

  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:

      dispose_package_versions_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("expectedStatus") => list(any()),
        optional("namespace") => String.t() | atom(),
        optional("versionRevisions") => map(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom(),
        required("versions") => list(String.t() | atom())
      }

  """
  @type dispose_package_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_origin_configuration() :: %{
        "restrictions" => package_origin_restrictions()
      }

  """
  @type package_origin_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type describe_repository_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_allowed_repositories_for_group_result() :: %{
        "allowedRepositories" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_allowed_repositories_for_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_version_origin() :: %{
        "domainEntryPoint" => domain_entry_point(),
        "originType" => list(any())
      }

  """
  @type package_version_origin() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "arn" => String.t() | atom(),
        "createdTime" => non_neg_integer(),
        "encryptionKey" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type domain_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_packages_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("format") => list(any()),
        optional("maxResults") => integer(),
        optional("namespace") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("packagePrefix") => String.t() | atom(),
        optional("publish") => list(any()),
        optional("upstream") => list(any()),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type list_packages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type delete_repository_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type delete_package_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_version_asset_result() :: %{
        "asset" => binary(),
        "assetName" => String.t() | atom(),
        "packageVersion" => String.t() | atom(),
        "packageVersionRevision" => String.t() | atom()
      }

  """
  @type get_package_version_asset_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publish_package_version_result() :: %{
        "asset" => asset_summary(),
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "package" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom(),
        "versionRevision" => String.t() | atom()
      }

  """
  @type publish_package_version_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_result() :: %{
        "domain" => domain_description()
      }

  """
  @type create_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_summary() :: %{
        "hashes" => map(),
        "name" => String.t() | atom(),
        "size" => float()
      }

  """
  @type asset_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_group_request() :: %{
        optional("contactInfo") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type update_package_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_associated_package_group_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom()
      }

  """
  @type get_associated_package_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_allowed_repositories_for_group_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("originRestrictionType") => list(any()),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type list_allowed_repositories_for_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_repository_permissions_policy_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("policyRevision") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("policyDocument") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type put_repository_permissions_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_group_reference() :: %{
        "arn" => String.t() | atom(),
        "pattern" => String.t() | atom()
      }

  """
  @type package_group_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_version_description() :: %{
        "displayName" => String.t() | atom(),
        "format" => list(any()),
        "homePage" => String.t() | atom(),
        "licenses" => list(license_info()),
        "namespace" => String.t() | atom(),
        "origin" => package_version_origin(),
        "packageName" => String.t() | atom(),
        "publishedTime" => non_neg_integer(),
        "revision" => String.t() | atom(),
        "sourceCodeRepository" => String.t() | atom(),
        "status" => list(any()),
        "summary" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type package_version_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_version_readme_result() :: %{
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "package" => String.t() | atom(),
        "readme" => String.t() | atom(),
        "version" => String.t() | atom(),
        "versionRevision" => String.t() | atom()
      }

  """
  @type get_package_version_readme_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_version_dependencies_result() :: %{
        "dependencies" => list(package_dependency()),
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "package" => String.t() | atom(),
        "version" => String.t() | atom(),
        "versionRevision" => String.t() | atom()
      }

  """
  @type list_package_version_dependencies_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upstream_repository() :: %{
        "repositoryName" => String.t() | atom()
      }

  """
  @type upstream_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_repositories_result() :: %{
        "nextToken" => String.t() | atom(),
        "repositories" => list(repository_summary())
      }

  """
  @type list_repositories_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom()
      }

  """
  @type delete_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_packages_result() :: %{
        "nextToken" => String.t() | atom(),
        "packages" => list(associated_package())
      }

  """
  @type list_associated_packages_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_summary() :: %{
        "administratorAccount" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "domainOwner" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type repository_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_versions_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type delete_package_versions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sub_package_groups_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type list_sub_package_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type delete_domain_permissions_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any())
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_group_origin_restriction() :: %{
        "effectiveMode" => list(any()),
        "inheritedFrom" => package_group_reference(),
        "mode" => list(any()),
        "repositoriesCount" => float()
      }

  """
  @type package_group_origin_restriction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_group_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type delete_package_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_repositories_in_domain_result() :: %{
        "nextToken" => String.t() | atom(),
        "repositories" => list(repository_summary())
      }

  """
  @type list_repositories_in_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_request() :: %{
        optional("encryptionKey") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("domain") => String.t() | atom()
      }

  """
  @type create_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_entry_point() :: %{
        "externalConnectionName" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }

  """
  @type domain_entry_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_versions_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("expectedStatus") => list(any()),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom(),
        required("versions") => list(String.t() | atom())
      }

  """
  @type delete_package_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_repository_endpoint_result() :: %{
        "repositoryEndpoint" => String.t() | atom()
      }

  """
  @type get_repository_endpoint_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any())
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_result() :: %{
        "domain" => domain_description()
      }

  """
  @type delete_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_version_readme_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("packageVersion") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type get_package_version_readme_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_repository_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type delete_repository_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_group_allowed_repository() :: %{
        "originRestrictionType" => list(any()),
        "repositoryName" => String.t() | atom()
      }

  """
  @type package_group_allowed_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_repositories_in_domain_request() :: %{
        optional("administratorAccount") => String.t() | atom(),
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("repositoryPrefix") => String.t() | atom(),
        required("domain") => String.t() | atom()
      }

  """
  @type list_repositories_in_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_external_connection_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("externalConnection") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type associate_external_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_package_result() :: %{
        "package" => package_description()
      }

  """
  @type describe_package_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dispose_package_versions_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type dispose_package_versions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domains_result() :: %{
        "domains" => list(domain_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_domains_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_group_origin_configuration_request() :: %{
        optional("addAllowedRepositories") => list(package_group_allowed_repository()),
        optional("domainOwner") => String.t() | atom(),
        optional("removeAllowedRepositories") => list(package_group_allowed_repository()),
        optional("restrictions") => map(),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type update_package_group_origin_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_packages_result() :: %{
        "nextToken" => String.t() | atom(),
        "packages" => list(package_summary())
      }

  """
  @type list_packages_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      successful_package_version_info() :: %{
        "revision" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type successful_package_version_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authorization_token_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("durationSeconds") => float(),
        required("domain") => String.t() | atom()
      }

  """
  @type get_authorization_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_package_versions_result() :: %{
        "failedVersions" => map(),
        "successfulVersions" => map()
      }

  """
  @type copy_package_versions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_groups_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("prefix") => String.t() | atom(),
        required("domain") => String.t() | atom()
      }

  """
  @type list_package_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      license_info() :: %{
        "name" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type license_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publish_package_version_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        optional("unfinished") => boolean(),
        required("assetContent") => binary(),
        required("assetName") => String.t() | atom(),
        required("assetSHA256") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("packageVersion") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type publish_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type describe_package_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_repository_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type delete_repository_permissions_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_group_summary() :: %{
        "arn" => String.t() | atom(),
        "contactInfo" => String.t() | atom(),
        "createdTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "domainOwner" => String.t() | atom(),
        "originConfiguration" => package_group_origin_configuration(),
        "parent" => package_group_reference(),
        "pattern" => String.t() | atom()
      }

  """
  @type package_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_description() :: %{
        "format" => list(any()),
        "name" => String.t() | atom(),
        "namespace" => String.t() | atom(),
        "originConfiguration" => package_origin_configuration()
      }

  """
  @type package_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domains_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_summary() :: %{
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "originConfiguration" => package_origin_configuration(),
        "package" => String.t() | atom()
      }

  """
  @type package_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sub_package_groups_result() :: %{
        "nextToken" => String.t() | atom(),
        "packageGroups" => list(package_group_summary())
      }

  """
  @type list_sub_package_groups_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_policy() :: %{
        "document" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "revision" => String.t() | atom()
      }

  """
  @type resource_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type get_domain_permissions_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_result() :: %{
        "tags" => list(tag())
      }

  """
  @type list_tags_for_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_external_connection_result() :: %{
        "repository" => repository_description()
      }

  """
  @type disassociate_external_connection_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_repository_request() :: %{
        optional("description") => String.t() | atom(),
        optional("domainOwner") => String.t() | atom(),
        optional("tags") => list(tag()),
        optional("upstreams") => list(upstream_repository()),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type create_repository_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_external_connection_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("externalConnection") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type disassociate_external_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_domain_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type put_domain_permissions_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_group_description() :: %{
        "arn" => String.t() | atom(),
        "contactInfo" => String.t() | atom(),
        "createdTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "domainOwner" => String.t() | atom(),
        "originConfiguration" => package_group_origin_configuration(),
        "parent" => package_group_reference(),
        "pattern" => String.t() | atom()
      }

  """
  @type package_group_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_package_version_result() :: %{
        "packageVersion" => package_version_description()
      }

  """
  @type describe_package_version_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type delete_package_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_repository_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type put_repository_permissions_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_domain_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom()
      }

  """
  @type describe_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upstream_repository_info() :: %{
        "repositoryName" => String.t() | atom()
      }

  """
  @type upstream_repository_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_package() :: %{
        "associationType" => list(any()),
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "package" => String.t() | atom()
      }

  """
  @type associated_package() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authorization_token_result() :: %{
        "authorizationToken" => String.t() | atom(),
        "expiration" => non_neg_integer()
      }

  """
  @type get_authorization_token_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_package_origin_configuration_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom(),
        required("restrictions") => package_origin_restrictions()
      }

  """
  @type put_package_origin_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_repository_endpoint_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("endpointType") => list(any()),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("repository") => String.t() | atom()
      }

  """
  @type get_repository_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_permissions_policy_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom()
      }

  """
  @type get_domain_permissions_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_associated_package_group_result() :: %{
        "associationType" => list(any()),
        "packageGroup" => package_group_description()
      }

  """
  @type get_associated_package_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_repository_permissions_policy_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type get_repository_permissions_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_packages_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("preview") => boolean(),
        required("domain") => String.t() | atom(),
        required("packageGroup") => String.t() | atom()
      }

  """
  @type list_associated_packages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_domain_permissions_policy_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("policyRevision") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("policyDocument") => String.t() | atom()
      }

  """
  @type put_domain_permissions_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_versions_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("namespace") => String.t() | atom(),
        optional("nextToken") => String.t() | atom(),
        optional("originType") => list(any()),
        optional("sortBy") => list(any()),
        optional("status") => list(any()),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type list_package_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_package_group_result() :: %{
        "packageGroup" => package_group_description()
      }

  """
  @type create_package_group_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_external_connection_result() :: %{
        "repository" => repository_description()
      }

  """
  @type associate_external_connection_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_package_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type describe_package_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_dependency() :: %{
        "dependencyType" => String.t() | atom(),
        "namespace" => String.t() | atom(),
        "package" => String.t() | atom(),
        "versionRequirement" => String.t() | atom()
      }

  """
  @type package_dependency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_description() :: %{
        "arn" => String.t() | atom(),
        "assetSizeBytes" => float(),
        "createdTime" => non_neg_integer(),
        "encryptionKey" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "repositoryCount" => integer(),
        "s3BucketArn" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type domain_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_package_versions_result() :: %{
        "defaultDisplayVersion" => String.t() | atom(),
        "format" => list(any()),
        "namespace" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "package" => String.t() | atom(),
        "versions" => list(package_version_summary())
      }

  """
  @type list_package_versions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_package_result() :: %{
        "deletedPackage" => package_summary()
      }

  """
  @type delete_package_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_external_connection_info() :: %{
        "externalConnectionName" => String.t() | atom(),
        "packageFormat" => list(any()),
        "status" => list(any())
      }

  """
  @type repository_external_connection_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_repository_request() :: %{
        optional("description") => String.t() | atom(),
        optional("domainOwner") => String.t() | atom(),
        optional("upstreams") => list(upstream_repository()),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type update_repository_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_result() :: %{}

  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:

      list_repositories_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("repositoryPrefix") => String.t() | atom()
      }

  """
  @type list_repositories_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_version_summary() :: %{
        "origin" => package_version_origin(),
        "revision" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type package_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_group_origin_configuration_result() :: %{
        "allowedRepositoryUpdates" => map(),
        "packageGroup" => package_group_description()
      }

  """
  @type update_package_group_origin_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_domain_result() :: %{
        "domain" => domain_description()
      }

  """
  @type describe_domain_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_package_version_asset_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        optional("packageVersionRevision") => String.t() | atom(),
        required("asset") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("packageVersion") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type get_package_version_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type create_repository_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_package_version_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("packageVersion") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type describe_package_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_description() :: %{
        "administratorAccount" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "domainOwner" => String.t() | atom(),
        "externalConnections" => list(repository_external_connection_info()),
        "name" => String.t() | atom(),
        "upstreams" => list(upstream_repository_info())
      }

  """
  @type repository_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_repository_permissions_policy_result() :: %{
        "policy" => resource_policy()
      }

  """
  @type get_repository_permissions_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_version_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t() | atom()
      }

  """
  @type package_version_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_package_origin_configuration_result() :: %{
        "originConfiguration" => package_origin_configuration()
      }

  """
  @type put_package_origin_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_repository_permissions_policy_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("policyRevision") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type delete_repository_permissions_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_origin_restrictions() :: %{
        "publish" => list(any()),
        "upstream" => list(any())
      }

  """
  @type package_origin_restrictions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_package_versions_request() :: %{
        optional("allowOverwrite") => boolean(),
        optional("domainOwner") => String.t() | atom(),
        optional("includeFromUpstream") => boolean(),
        optional("namespace") => String.t() | atom(),
        optional("versionRevisions") => map(),
        optional("versions") => list(String.t() | atom()),
        required("destinationRepository") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("sourceRepository") => String.t() | atom()
      }

  """
  @type copy_package_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_package_versions_status_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("expectedStatus") => list(any()),
        optional("namespace") => String.t() | atom(),
        optional("versionRevisions") => map(),
        required("domain") => String.t() | atom(),
        required("format") => list(any()),
        required("package") => String.t() | atom(),
        required("repository") => String.t() | atom(),
        required("targetStatus") => list(any()),
        required("versions") => list(String.t() | atom())
      }

  """
  @type update_package_versions_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_repository_result() :: %{
        "repository" => repository_description()
      }

  """
  @type update_repository_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_permissions_policy_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        optional("policyRevision") => String.t() | atom(),
        required("domain") => String.t() | atom()
      }

  """
  @type delete_domain_permissions_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_group_origin_configuration() :: %{
        "restrictions" => map()
      }

  """
  @type package_group_origin_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_repository_request() :: %{
        optional("domainOwner") => String.t() | atom(),
        required("domain") => String.t() | atom(),
        required("repository") => String.t() | atom()
      }

  """
  @type describe_repository_request() :: %{(String.t() | atom()) => any()}

  @type associate_external_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type copy_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_domain_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_repository_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_external_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type dispose_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_associated_package_group_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_authorization_token_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_package_version_asset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_package_version_readme_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_repository_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_repository_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_allowed_repositories_for_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_associated_packages_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_package_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_package_version_assets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_package_version_dependencies_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_package_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_packages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_repositories_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_repositories_in_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_sub_package_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type publish_package_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_domain_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_package_origin_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_repository_permissions_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_package_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_package_group_origin_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_package_versions_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-09-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeartifact",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "codeartifact",
      signature_version: "v4",
      signing_name: "codeartifact",
      target_prefix: nil
    }
  end

  @doc """
  Adds an existing external connection to a repository.

  One external connection is allowed
  per repository.

  A repository can have one or more upstream repositories, or an external
  connection.
  """
  @spec associate_external_connection(map(), associate_external_connection_request(), list()) ::
          {:ok, associate_external_connection_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_external_connection_errors()}
  def associate_external_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/external-connection"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Copies package versions from one repository to another repository in the same
  domain.

  You must specify `versions` or `versionRevisions`. You cannot specify both.
  """
  @spec copy_package_versions(map(), copy_package_versions_request(), list()) ::
          {:ok, copy_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_package_versions_errors()}
  def copy_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/copy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"destinationRepository", "destination-repository"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"sourceRepository", "source-repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Creates a domain.

  CodeArtifact *domains* make it easier to manage multiple repositories across an
  organization. You can use a domain to apply permissions across many
  repositories owned by different Amazon Web Services accounts. An asset is stored
  only once
  in a domain, even if it's in multiple repositories.

  Although you can have multiple domains, we recommend a single production domain
  that contains all
  published artifacts so that your development teams can find and share packages.
  You can use a second
  pre-production domain to test changes to the production domain configuration.
  """
  @spec create_domain(map(), create_domain_request(), list()) ::
          {:ok, create_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Creates a package group.

  For more information about creating package groups, including example CLI
  commands, see [Create a package group](https://docs.aws.amazon.com/codeartifact/latest/ug/create-package-group.html)
  in the *CodeArtifact User Guide*.
  """
  @spec create_package_group(map(), create_package_group_request(), list()) ::
          {:ok, create_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_package_group_errors()}
  def create_package_group(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Creates a repository.
  """
  @spec create_repository(map(), create_repository_request(), list()) ::
          {:ok, create_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_repository_errors()}
  def create_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes a domain.

  You cannot delete a domain that contains repositories. If you want to delete a
  domain
  with repositories, first delete its repositories.
  """
  @spec delete_domain(map(), delete_domain_request(), list()) ::
          {:ok, delete_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes the resource policy set on a domain.
  """
  @spec delete_domain_permissions_policy(
          map(),
          delete_domain_permissions_policy_request(),
          list()
        ) ::
          {:ok, delete_domain_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_permissions_policy_errors()}
  def delete_domain_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/permissions/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a package and all associated package versions.

  A deleted package cannot be restored. To delete one or more package versions,
  use the
  [DeletePackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DeletePackageVersions.html)
  API.
  """
  @spec delete_package(map(), delete_package_request(), list()) ::
          {:ok, delete_package_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_package_errors()}
  def delete_package(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a package group.

  Deleting a package group does not delete packages or package versions associated
  with the package group.
  When a package group is deleted, the direct child package groups will become
  children of the package
  group's direct parent package group. Therefore, if any of the child groups are
  inheriting any settings
  from the parent, those settings could change.
  """
  @spec delete_package_group(map(), delete_package_group_request(), list()) ::
          {:ok, delete_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_package_group_errors()}
  def delete_package_group(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"packageGroup", "package-group"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes one or more versions of a package.

  A deleted package version cannot be restored
  in your repository. If you want to remove a package version from your repository
  and be able
  to restore it later, set its status to `Archived`. Archived packages cannot be
  downloaded from a repository and don't show up with list package APIs (for
  example,
  [ListPackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)), but you can restore them using
  [UpdatePackageVersionsStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html).
  """
  @spec delete_package_versions(map(), delete_package_versions_request(), list()) ::
          {:ok, delete_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_package_versions_errors()}
  def delete_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/delete"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes a repository.
  """
  @spec delete_repository(map(), delete_repository_request(), list()) ::
          {:ok, delete_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_repository_errors()}
  def delete_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes the resource policy that is set on a repository.

  After a resource policy is deleted, the
  permissions allowed and denied by the deleted policy are removed. The effect of
  deleting a resource policy might not be immediate.

  Use `DeleteRepositoryPermissionsPolicy` with caution. After a policy is deleted,
  Amazon Web Services users, roles, and accounts lose permissions to perform
  the repository actions granted by the deleted policy.
  """
  @spec delete_repository_permissions_policy(
          map(),
          delete_repository_permissions_policy_request(),
          list()
        ) ::
          {:ok, delete_repository_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_repository_permissions_policy_errors()}
  def delete_repository_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/permissions/policies"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns a
  [DomainDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html)

  object that contains information about the requested domain.
  """
  @spec describe_domain(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, describe_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_domain_errors()}
  def describe_domain(%Client{} = client, domain, domain_owner \\ nil, options \\ []) do
    url_path = "/v1/domain"
    headers = []
    query_params = []

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a
  [PackageDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html)

  object that contains information about the requested package.
  """
  @spec describe_package(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_package_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_package_errors()}
  def describe_package(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        format,
        namespace \\ nil,
        package,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a
  [PackageGroupDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html)
  object that
  contains information about the requested package group.
  """
  @spec describe_package_group(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_package_group_errors()}
  def describe_package_group(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        package_group,
        options \\ []
      ) do
    url_path = "/v1/package-group"
    headers = []
    query_params = []

    query_params =
      if !is_nil(package_group) do
        [{"package-group", package_group} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)

  object that contains information about the requested package version.
  """
  @spec describe_package_version(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_package_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_package_version_errors()}
  def describe_package_version(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        format,
        namespace \\ nil,
        package,
        package_version,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package/version"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_version) do
        [{"version", package_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns a `RepositoryDescription` object that contains detailed information
  about the requested repository.
  """
  @spec describe_repository(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_repository_errors()}
  def describe_repository(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        repository,
        options \\ []
      ) do
    url_path = "/v1/repository"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Removes an existing external connection from a repository.
  """
  @spec disassociate_external_connection(
          map(),
          disassociate_external_connection_request(),
          list()
        ) ::
          {:ok, disassociate_external_connection_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_external_connection_errors()}
  def disassociate_external_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/external-connection"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes the assets in package versions and sets the package versions' status to
  `Disposed`.

  A disposed package version cannot be restored in your repository because its
  assets are deleted.

  To view all disposed package versions in a repository, use
  [ListPackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html) and set the
  [status](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax)
  parameter
  to `Disposed`.

  To view information about a disposed package version, use
  [DescribePackageVersion](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html).
  """
  @spec dispose_package_versions(map(), dispose_package_versions_request(), list()) ::
          {:ok, dispose_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, dispose_package_versions_errors()}
  def dispose_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/dispose"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the most closely associated package group to the specified package.

  This API does not require that the package exist
  in any repository in the domain. As such, `GetAssociatedPackageGroup` can be
  used to see which package group's origin configuration
  applies to a package before that package is in a repository. This can be helpful
  to check if public packages are blocked without ingesting them.

  For information package group association and matching, see
  [Package group definition syntax and matching
  behavior](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html)
  in the *CodeArtifact User Guide*.
  """
  @spec get_associated_package_group(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_associated_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_associated_package_group_errors()}
  def get_associated_package_group(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        format,
        namespace \\ nil,
        package,
        options \\ []
      ) do
    url_path = "/v1/get-associated-package-group"
    headers = []
    query_params = []

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Generates a temporary authorization token for accessing repositories in the
  domain.

  This API requires the `codeartifact:GetAuthorizationToken` and
  `sts:GetServiceBearerToken` permissions.
  For more information about authorization tokens, see
  [CodeArtifact authentication and tokens](https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html).

  CodeArtifact authorization tokens are valid for a period of 12 hours when
  created with the `login` command.
  You can call `login` periodically to refresh the token. When
  you create an authorization token with the `GetAuthorizationToken` API, you can
  set a custom authorization period,
  up to a maximum of 12 hours, with the `durationSeconds` parameter.

  The authorization period begins after `login`
  or `GetAuthorizationToken` is called. If `login` or `GetAuthorizationToken` is
  called while
  assuming a role, the token lifetime is independent of the maximum session
  duration
  of the role. For example, if you call `sts assume-role` and specify a session
  duration of 15 minutes, then
  generate a CodeArtifact authorization token, the token will be valid for the
  full authorization period
  even though this is longer than the 15-minute session duration.

  See
  [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
  for more information on controlling session duration.
  """
  @spec get_authorization_token(map(), get_authorization_token_request(), list()) ::
          {:ok, get_authorization_token_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authorization_token_errors()}
  def get_authorization_token(%Client{} = client, input, options \\ []) do
    url_path = "/v1/authorization-token"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"durationSeconds", "duration"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns the resource policy attached to the specified domain.

  The policy is a resource-based policy, not an identity-based policy. For more
  information, see
  [Identity-based policies and resource-based policies
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *IAM User Guide*.
  """
  @spec get_domain_permissions_policy(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_domain_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_permissions_policy_errors()}
  def get_domain_permissions_policy(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        options \\ []
      ) do
    url_path = "/v1/domain/permissions/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns an asset (or file) that is in a package.

  For example, for a Maven package version, use
  `GetPackageVersionAsset` to download a `JAR` file, a `POM` file,
  or any other assets in the package version.
  """
  @spec get_package_version_asset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_package_version_asset_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_package_version_asset_errors()}
  def get_package_version_asset(
        %Client{} = client,
        asset,
        domain,
        domain_owner \\ nil,
        format,
        namespace \\ nil,
        package,
        package_version,
        package_version_revision \\ nil,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package/version/asset"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_version_revision) do
        [{"revision", package_version_revision} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_version) do
        [{"version", package_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset) do
        [{"asset", asset} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-AssetName", "assetName"},
          {"X-PackageVersion", "packageVersion"},
          {"X-PackageVersionRevision", "packageVersionRevision"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets the readme file or descriptive text for a package version.

  The returned text might contain formatting. For example, it might contain
  formatting for Markdown or reStructuredText.
  """
  @spec get_package_version_readme(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_package_version_readme_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_package_version_readme_errors()}
  def get_package_version_readme(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        format,
        namespace \\ nil,
        package,
        package_version,
        repository,
        options \\ []
      ) do
    url_path = "/v1/package/version/readme"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_version) do
        [{"version", package_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package) do
        [{"package", package} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the endpoint of a repository for a specific package format.

  A repository has one endpoint for each
  package format:

    *

  `cargo`

    *

  `generic`

    *

  `maven`

    *

  `npm`

    *

  `nuget`

    *

  `pypi`

    *

  `ruby`

    *

  `swift`
  """
  @spec get_repository_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_repository_endpoint_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_endpoint_errors()}
  def get_repository_endpoint(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        endpoint_type \\ nil,
        format,
        repository,
        options \\ []
      ) do
    url_path = "/v1/repository/endpoint"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(endpoint_type) do
        [{"endpointType", endpoint_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns the resource policy that is set on a repository.
  """
  @spec get_repository_permissions_policy(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_repository_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_permissions_policy_errors()}
  def get_repository_permissions_policy(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        repository,
        options \\ []
      ) do
    url_path = "/v1/repository/permissions/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(repository) do
        [{"repository", repository} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the repositories in the added repositories list of the specified
  restriction type for a package group.

  For more information about restriction types
  and added repository lists, see [Package group origin controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html)
  in the *CodeArtifact User Guide*.
  """
  @spec list_allowed_repositories_for_group(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_allowed_repositories_for_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_allowed_repositories_for_group_errors()}
  def list_allowed_repositories_for_group(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        origin_restriction_type,
        package_group,
        options \\ []
      ) do
    url_path = "/v1/package-group-allowed-repositories"
    headers = []
    query_params = []

    query_params =
      if !is_nil(package_group) do
        [{"package-group", package_group} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(origin_restriction_type) do
        [{"originRestrictionType", origin_restriction_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of packages associated with the requested package group.

  For information package group association and matching, see
  [Package group definition syntax and matching
  behavior](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html)
  in the *CodeArtifact User Guide*.
  """
  @spec list_associated_packages(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_associated_packages_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_packages_errors()}
  def list_associated_packages(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        package_group,
        preview \\ nil,
        options \\ []
      ) do
    url_path = "/v1/list-associated-packages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(preview) do
        [{"preview", preview} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_group) do
        [{"package-group", package_group} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_owner) do
        [{"domain-owner", domain_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of
  [DomainSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  objects for all domains owned by the Amazon Web Services account that makes
  this call.

  Each returned `DomainSummary` object contains information about a
  domain.
  """
  @spec list_domains(map(), list_domains_request(), list()) ::
          {:ok, list_domains_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domains"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of package groups in the requested domain.
  """
  @spec list_package_groups(map(), list_package_groups_request(), list()) ::
          {:ok, list_package_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_package_groups_errors()}
  def list_package_groups(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-groups"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"prefix", "prefix"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns a list of
  [AssetSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)

  objects for assets in a package version.
  """
  @spec list_package_version_assets(map(), list_package_version_assets_request(), list()) ::
          {:ok, list_package_version_assets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_package_version_assets_errors()}
  def list_package_version_assets(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/assets"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns the direct dependencies for a package version.

  The dependencies are returned as
  [PackageDependency](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)

  objects. CodeArtifact extracts the dependencies for a package version from the
  metadata file for the package
  format (for example, the `package.json` file for npm packages and the `pom.xml`
  file
  for Maven). Any package version dependencies that are not listed in the
  configuration file are not returned.
  """
  @spec list_package_version_dependencies(
          map(),
          list_package_version_dependencies_request(),
          list()
        ) ::
          {:ok, list_package_version_dependencies_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_package_version_dependencies_errors()}
  def list_package_version_dependencies(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/dependencies"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns a list of
  [PackageVersionSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)

  objects for package versions in a repository that match the request parameters.

  Package versions of all statuses will be returned by default when calling
  `list-package-versions` with no `--status` parameter.
  """
  @spec list_package_versions(map(), list_package_versions_request(), list()) ::
          {:ok, list_package_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_package_versions_errors()}
  def list_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"originType", "originType"},
        {"package", "package"},
        {"repository", "repository"},
        {"sortBy", "sortBy"},
        {"status", "status"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns a list of
  [PackageSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)

  objects for packages in a repository that match the request parameters.
  """
  @spec list_packages(map(), list_packages_request(), list()) ::
          {:ok, list_packages_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_packages_errors()}
  def list_packages(%Client{} = client, input, options \\ []) do
    url_path = "/v1/packages"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"packagePrefix", "package-prefix"},
        {"publish", "publish"},
        {"repository", "repository"},
        {"upstream", "upstream"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns a list of
  [RepositorySummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)

  objects.

  Each `RepositorySummary` contains information about a repository in the
  specified Amazon Web Services account and that matches the input
  parameters.
  """
  @spec list_repositories(map(), list_repositories_request(), list()) ::
          {:ok, list_repositories_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repositories_errors()}
  def list_repositories(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repositories"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns a list of
  [RepositorySummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)

  objects.

  Each `RepositorySummary` contains information about a repository in the
  specified domain and that matches the input
  parameters.
  """
  @spec list_repositories_in_domain(map(), list_repositories_in_domain_request(), list()) ::
          {:ok, list_repositories_in_domain_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repositories_in_domain_errors()}
  def list_repositories_in_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/repositories"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"administratorAccount", "administrator-account"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of direct children of the specified package group.

  For information package group hierarchy, see
  [Package group definition syntax and matching
  behavior](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html)
  in the *CodeArtifact User Guide*.
  """
  @spec list_sub_package_groups(map(), list_sub_package_groups_request(), list()) ::
          {:ok, list_sub_package_groups_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sub_package_groups_errors()}
  def list_sub_package_groups(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-groups/sub-groups"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"packageGroup", "package-group"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information about Amazon Web Services tags for a specified Amazon Resource
  Name (ARN) in CodeArtifact.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tags"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new package version containing one or more assets (or files).

  The `unfinished` flag can be used to keep the package version in the
  `Unfinished` state until all of its assets have been uploaded (see [Package version
  status](https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status)
  in the *CodeArtifact user guide*). To set
  the package version’s status to `Published`, omit the `unfinished` flag
  when uploading the final asset, or set the status using
  [UpdatePackageVersionStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html). Once a package version’s status is set to
  `Published`, it cannot change back to `Unfinished`.

  Only generic packages can be published using this API. For more information, see
  [Using generic
  packages](https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html)
  in the *CodeArtifact User Guide*.
  """
  @spec publish_package_version(map(), publish_package_version_request(), list()) ::
          {:ok, publish_package_version_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_package_version_errors()}
  def publish_package_version(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/publish"

    {headers, input} =
      [
        {"assetSHA256", "x-amz-content-sha256"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"assetName", "asset"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"},
        {"unfinished", "unfinished"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Sets a resource policy on a domain that specifies permissions to access it.

  When you call `PutDomainPermissionsPolicy`, the resource policy on the domain is
  ignored when evaluting permissions.
  This ensures that the owner of a domain cannot lock themselves out of the
  domain, which would prevent them from being
  able to update the resource policy.
  """
  @spec put_domain_permissions_policy(map(), put_domain_permissions_policy_request(), list()) ::
          {:ok, put_domain_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_domain_permissions_policy_errors()}
  def put_domain_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/permissions/policy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Sets the package origin configuration for a package.

  The package origin configuration determines how new versions of a package can be
  added to a repository. You can allow or block direct
  publishing of new package versions, or ingestion and retaining of new package
  versions from an external connection or upstream source.
  For more information about package origin controls and configuration, see
  [Editing package origin controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-origin-controls.html)
  in the *CodeArtifact User Guide*.

  `PutPackageOriginConfiguration` can be called on a package that doesn't yet
  exist in the repository. When called
  on a package that does not exist, a package is created in the repository with no
  versions and the requested restrictions are set on the package.
  This can be used to preemptively block ingesting or retaining any versions from
  external connections or upstream repositories, or to block
  publishing any versions of the package into the repository before connecting any
  package managers or publishers to the repository.
  """
  @spec put_package_origin_configuration(
          map(),
          put_package_origin_configuration_request(),
          list()
        ) ::
          {:ok, put_package_origin_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_package_origin_configuration_errors()}
  def put_package_origin_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Sets the resource policy on a repository that specifies permissions to access
  it.

  When you call `PutRepositoryPermissionsPolicy`, the resource policy on the
  repository is ignored when evaluting permissions.
  This ensures that the owner of a repository cannot lock themselves out of the
  repository, which would prevent them from being
  able to update the resource policy.
  """
  @spec put_repository_permissions_policy(
          map(),
          put_repository_permissions_policy_request(),
          list()
        ) ::
          {:ok, put_repository_permissions_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_repository_permissions_policy_errors()}
  def put_repository_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/permissions/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or updates tags for a resource in CodeArtifact.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tag"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a resource in CodeArtifact.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/untag"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a package group.

  This API cannot be used to update a package group's origin configuration or
  pattern. To update a
  package group's origin configuration, use
  [UpdatePackageGroupOriginConfiguration](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageGroupOriginConfiguration.html).
  """
  @spec update_package_group(map(), update_package_group_request(), list()) ::
          {:ok, update_package_group_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_package_group_errors()}
  def update_package_group(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the package origin configuration for a package group.

  The package origin configuration determines how new versions of a package can be
  added to a repository. You can allow or block direct
  publishing of new package versions, or ingestion and retaining of new package
  versions from an external connection or upstream source.
  For more information about package group origin controls and configuration, see
  [Package group origin controls](https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html)
  in the *CodeArtifact User Guide*.
  """
  @spec update_package_group_origin_configuration(
          map(),
          update_package_group_origin_configuration_request(),
          list()
        ) ::
          {:ok, update_package_group_origin_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_package_group_origin_configuration_errors()}
  def update_package_group_origin_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package-group-origin-configuration"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"packageGroup", "package-group"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Updates the status of one or more versions of a package.

  Using `UpdatePackageVersionsStatus`,
  you can update the status of package versions to `Archived`, `Published`, or
  `Unlisted`.
  To set the status of a package version to `Disposed`, use
  [DisposePackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DisposePackageVersions.html).
  """
  @spec update_package_versions_status(map(), update_package_versions_status_request(), list()) ::
          {:ok, update_package_versions_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_package_versions_status_errors()}
  def update_package_versions_status(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/update_status"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Update the properties of a repository.
  """
  @spec update_repository(map(), update_repository_request(), list()) ::
          {:ok, update_repository_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_repository_errors()}
  def update_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
