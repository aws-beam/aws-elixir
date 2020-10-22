# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codeartifact do
  @moduledoc """
  AWS CodeArtifact is a fully managed artifact repository compatible with
  language-native package managers and build tools such as npm, Apache Maven,
  and pip. You can use CodeArtifact to share packages with development teams
  and pull packages. Packages can be pulled from both public and CodeArtifact
  repositories. You can also create an upstream relationship between a
  CodeArtifact repository and another repository, which effectively merges
  their contents from the point of view of a package manager client.

  **AWS CodeArtifact Components**

  Use the information in this guide to help you work with the following
  CodeArtifact components:

  <ul> <li> **Repository**: A CodeArtifact repository contains a set of
  [package
  versions](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version),
  each of which maps to a set of assets, or files. Repositories are polyglot,
  so a single repository can contain packages of any supported type. Each
  repository exposes endpoints for fetching and publishing packages using
  tools like the ** `npm` ** CLI, the Maven CLI (** `mvn` **), and ** `pip`
  **. You can create up to 100 repositories per AWS account.

  </li> <li> **Domain**: Repositories are aggregated into a higher-level
  entity known as a *domain*. All package assets and metadata are stored in
  the domain, but are consumed through repositories. A given package asset,
  such as a Maven JAR file, is stored once per domain, no matter how many
  repositories it's present in. All of the assets and metadata in a domain
  are encrypted with the same customer master key (CMK) stored in AWS Key
  Management Service (AWS KMS).

  Each repository is a member of a single domain and can't be moved to a
  different domain.

  The domain allows organizational policy to be applied across multiple
  repositories, such as which accounts can access repositories in the domain,
  and which public repositories can be used as sources of packages.

  Although an organization can have multiple domains, we recommend a single
  production domain that contains all published artifacts so that teams can
  find and share packages across their organization.

  </li> <li> **Package**: A *package* is a bundle of software and the
  metadata required to resolve dependencies and install the software.
  CodeArtifact supports
  [npm](https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html),
  [PyPI](https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html),
  and [Maven](https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven)
  package formats.

  In CodeArtifact, a package consists of:

  <ul> <li> A *name* (for example, `webpack` is the name of a popular npm
  package)

  </li> <li> An optional namespace (for example, `@types` in `@types/node`)

  </li> <li> A set of versions (for example, `1.0.0`, `1.0.1`, `1.0.2`, etc.)

  </li> <li> Package-level metadata (for example, npm tags)

  </li> </ul> </li> <li> **Package version**: A version of a package, such as
  `@types/node 12.6.9`. The version number format and semantics vary for
  different package formats. For example, npm package versions must conform
  to the [Semantic Versioning specification](https://semver.org/). In
  CodeArtifact, a package version consists of the version identifier,
  metadata at the package version level, and a set of assets.

  </li> <li> **Upstream repository**: One repository is *upstream* of another
  when the package versions in it can be accessed from the repository
  endpoint of the downstream repository, effectively merging the contents of
  the two repositories from the point of view of a client. CodeArtifact
  allows creating an upstream relationship between two repositories.

  </li> <li> **Asset**: An individual file stored in CodeArtifact associated
  with a package version, such as an npm `.tgz` file or Maven POM and JAR
  files.

  </li> </ul> CodeArtifact supports these operations:

  <ul> <li> `AssociateExternalConnection`: Adds an existing external
  connection to a repository.

  </li> <li> `CopyPackageVersions`: Copies package versions from one
  repository to another repository in the same domain.

  </li> <li> `CreateDomain`: Creates a domain

  </li> <li> `CreateRepository`: Creates a CodeArtifact repository in a
  domain.

  </li> <li> `DeleteDomain`: Deletes a domain. You cannot delete a domain
  that contains repositories.

  </li> <li> `DeleteDomainPermissionsPolicy`: Deletes the resource policy
  that is set on a domain.

  </li> <li> `DeletePackageVersions`: Deletes versions of a package. After a
  package has been deleted, it can be republished, but its assets and
  metadata cannot be restored because they have been permanently removed from
  storage.

  </li> <li> `DeleteRepository`: Deletes a repository.

  </li> <li> `DeleteRepositoryPermissionsPolicy`: Deletes the resource policy
  that is set on a repository.

  </li> <li> `DescribeDomain`: Returns a `DomainDescription` object that
  contains information about the requested domain.

  </li> <li> `DescribePackageVersion`: Returns a `
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  ` object that contains details about a package version.

  </li> <li> `DescribeRepository`: Returns a `RepositoryDescription` object
  that contains detailed information about the requested repository.

  </li> <li> `DisposePackageVersions`: Disposes versions of a package. A
  package version with the status `Disposed` cannot be restored because they
  have been permanently removed from storage.

  </li> <li> `DisassociateExternalConnection`: Removes an existing external
  connection from a repository.

  </li> <li> `GetAuthorizationToken`: Generates a temporary authorization
  token for accessing repositories in the domain. The token expires the
  authorization period has passed. The default authorization period is 12
  hours and can be customized to any length with a maximum of 12 hours.

  </li> <li> `GetDomainPermissionsPolicy`: Returns the policy of a resource
  that is attached to the specified domain.

  </li> <li> `GetPackageVersionAsset`: Returns the contents of an asset that
  is in a package version.

  </li> <li> `GetPackageVersionReadme`: Gets the readme file or descriptive
  text for a package version.

  </li> <li> `GetRepositoryEndpoint`: Returns the endpoint of a repository
  for a specific package format. A repository has one endpoint for each
  package format:

  <ul> <li> `npm`

  </li> <li> `pypi`

  </li> <li> `maven`

  </li> </ul> </li> <li> `GetRepositoryPermissionsPolicy`: Returns the
  resource policy that is set on a repository.

  </li> <li> `ListDomains`: Returns a list of `DomainSummary` objects. Each
  returned `DomainSummary` object contains information about a domain.

  </li> <li> `ListPackages`: Lists the packages in a repository.

  </li> <li> `ListPackageVersionAssets`: Lists the assets for a given package
  version.

  </li> <li> `ListPackageVersionDependencies`: Returns a list of the direct
  dependencies for a package version.

  </li> <li> `ListPackageVersions`: Returns a list of package versions for a
  specified package in a repository.

  </li> <li> `ListRepositories`: Returns a list of repositories owned by the
  AWS account that called this method.

  </li> <li> `ListRepositoriesInDomain`: Returns a list of the repositories
  in a domain.

  </li> <li> `PutDomainPermissionsPolicy`: Attaches a resource policy to a
  domain.

  </li> <li> `PutRepositoryPermissionsPolicy`: Sets the resource policy on a
  repository that specifies permissions to access it.

  </li> <li> `UpdatePackageVersionsStatus`: Updates the status of one or more
  versions of a package.

  </li> <li> `UpdateRepository`: Updates the properties of a repository.

  </li> </ul>
  """

  @doc """
  Adds an existing external connection to a repository. One external
  connection is allowed per repository.

  <note> A repository can have one or more upstream repositories, or an
  external connection.

  </note>
  """
  def associate_external_connection(client, input, options \\ []) do
    path_ = "/v1/repository/external-connection"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Copies package versions from one repository to another repository in the
  same domain.

  <note> You must specify `versions` or `versionRevisions`. You cannot
  specify both.

  </note>
  """
  def copy_package_versions(client, input, options \\ []) do
    path_ = "/v1/package/versions/copy"
    headers = []
    {query_, input} =
      [
        {"destinationRepository", "destination-repository"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"sourceRepository", "source-repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a domain. CodeArtifact *domains* make it easier to manage multiple
  repositories across an organization. You can use a domain to apply
  permissions across many repositories owned by different AWS accounts. An
  asset is stored only once in a domain, even if it's in multiple
  repositories.

  Although you can have multiple domains, we recommend a single production
  domain that contains all published artifacts so that your development teams
  can find and share packages. You can use a second pre-production domain to
  test changes to the production domain configuration.
  """
  def create_domain(client, input, options \\ []) do
    path_ = "/v1/domain"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a repository.
  """
  def create_repository(client, input, options \\ []) do
    path_ = "/v1/repository"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a domain. You cannot delete a domain that contains repositories. If
  you want to delete a domain with repositories, first delete its
  repositories.
  """
  def delete_domain(client, input, options \\ []) do
    path_ = "/v1/domain"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the resource policy set on a domain.
  """
  def delete_domain_permissions_policy(client, input, options \\ []) do
    path_ = "/v1/domain/permissions/policy"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes one or more versions of a package. A deleted package version cannot
  be restored in your repository. If you want to remove a package version
  from your repository and be able to restore it later, set its status to
  `Archived`. Archived packages cannot be downloaded from a repository and
  don't show up with list package APIs (for example, `
  [ListackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)
  `), but you can restore them using `
  [UpdatePackageVersionsStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html)
  `.
  """
  def delete_package_versions(client, input, options \\ []) do
    path_ = "/v1/package/versions/delete"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a repository.
  """
  def delete_repository(client, input, options \\ []) do
    path_ = "/v1/repository"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the resource policy that is set on a repository. After a resource
  policy is deleted, the permissions allowed and denied by the deleted policy
  are removed. The effect of deleting a resource policy might not be
  immediate.

  <important> Use `DeleteRepositoryPermissionsPolicy` with caution. After a
  policy is deleted, AWS users, roles, and accounts lose permissions to
  perform the repository actions granted by the deleted policy.

  </important>
  """
  def delete_repository_permissions_policy(client, input, options \\ []) do
    path_ = "/v1/repository/permissions/policies"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a [ `DomainDescription`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html)
  object that contains information about the requested domain.
  """
  def describe_domain(client, domain, domain_owner \\ nil, options \\ []) do
    path_ = "/v1/domain"
    headers = []
    query_ = []
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a [ `PackageVersionDescription`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  object that contains information about the requested package version.
  """
  def describe_package_version(client, domain, domain_owner \\ nil, format, namespace \\ nil, package, package_version, repository, options \\ []) do
    path_ = "/v1/package/version"
    headers = []
    query_ = []
    query_ = if !is_nil(repository) do
      [{"repository", repository} | query_]
    else
      query_
    end
    query_ = if !is_nil(package_version) do
      [{"version", package_version} | query_]
    else
      query_
    end
    query_ = if !is_nil(package) do
      [{"package", package} | query_]
    else
      query_
    end
    query_ = if !is_nil(namespace) do
      [{"namespace", namespace} | query_]
    else
      query_
    end
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a `RepositoryDescription` object that contains detailed information
  about the requested repository.
  """
  def describe_repository(client, domain, domain_owner \\ nil, repository, options \\ []) do
    path_ = "/v1/repository"
    headers = []
    query_ = []
    query_ = if !is_nil(repository) do
      [{"repository", repository} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Removes an existing external connection from a repository.
  """
  def disassociate_external_connection(client, input, options \\ []) do
    path_ = "/v1/repository/external-connection"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the assets in package versions and sets the package versions'
  status to `Disposed`. A disposed package version cannot be restored in your
  repository because its assets are deleted.

  To view all disposed package versions in a repository, use `
  [ListackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)
  ` and set the `
  [status](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax)
  ` parameter to `Disposed`.

  To view information about a disposed package version, use `
  [ListPackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)
  ` and set the `
  [status](https://docs.aws.amazon.com/API_ListPackageVersions.html#codeartifact-ListPackageVersions-response-status)
  ` parameter to `Disposed`.
  """
  def dispose_package_versions(client, input, options \\ []) do
    path_ = "/v1/package/versions/dispose"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Generates a temporary authentication token for accessing repositories in
  the domain. This API requires the `codeartifact:GetAuthorizationToken` and
  `sts:GetServiceBearerToken` permissions.

  <note> CodeArtifact authorization tokens are valid for a period of 12 hours
  when created with the `login` command. You can call `login` periodically to
  refresh the token. When you create an authorization token with the
  `GetAuthorizationToken` API, you can set a custom authorization period, up
  to a maximum of 12 hours, with the `durationSeconds` parameter.

  The authorization period begins after `login` or `GetAuthorizationToken` is
  called. If `login` or `GetAuthorizationToken` is called while assuming a
  role, the token lifetime is independent of the maximum session duration of
  the role. For example, if you call `sts assume-role` and specify a session
  duration of 15 minutes, then generate a CodeArtifact authorization token,
  the token will be valid for the full authorization period even though this
  is longer than the 15-minute session duration.

  See [Using IAM
  Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html)
  for more information on controlling session duration.

  </note>
  """
  def get_authorization_token(client, input, options \\ []) do
    path_ = "/v1/authorization-token"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"durationSeconds", "duration"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the resource policy attached to the specified domain.

  <note> The policy is a resource-based policy, not an identity-based policy.
  For more information, see [Identity-based policies and resource-based
  policies
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *AWS Identity and Access Management User Guide*.

  </note>
  """
  def get_domain_permissions_policy(client, domain, domain_owner \\ nil, options \\ []) do
    path_ = "/v1/domain/permissions/policy"
    headers = []
    query_ = []
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an asset (or file) that is in a package. For example, for a Maven
  package version, use `GetPackageVersionAsset` to download a `JAR` file, a
  `POM` file, or any other assets in the package version.
  """
  def get_package_version_asset(client, asset, domain, domain_owner \\ nil, format, namespace \\ nil, package, package_version, package_version_revision \\ nil, repository, options \\ []) do
    path_ = "/v1/package/version/asset"
    headers = []
    query_ = []
    query_ = if !is_nil(repository) do
      [{"repository", repository} | query_]
    else
      query_
    end
    query_ = if !is_nil(package_version_revision) do
      [{"revision", package_version_revision} | query_]
    else
      query_
    end
    query_ = if !is_nil(package_version) do
      [{"version", package_version} | query_]
    else
      query_
    end
    query_ = if !is_nil(package) do
      [{"package", package} | query_]
    else
      query_
    end
    query_ = if !is_nil(namespace) do
      [{"namespace", namespace} | query_]
    else
      query_
    end
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    query_ = if !is_nil(asset) do
      [{"asset", asset} | query_]
    else
      query_
    end
    case request(client, :get, path_, query_, headers, nil, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"X-AssetName", "assetName"},
            {"X-PackageVersion", "packageVersion"},
            {"X-PackageVersionRevision", "packageVersionRevision"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Gets the readme file or descriptive text for a package version. For
  packages that do not contain a readme file, CodeArtifact extracts a
  description from a metadata file. For example, from the
  `&lt;description&gt;` element in the `pom.xml` file of a Maven package.

  The returned text might contain formatting. For example, it might contain
  formatting for Markdown or reStructuredText.
  """
  def get_package_version_readme(client, domain, domain_owner \\ nil, format, namespace \\ nil, package, package_version, repository, options \\ []) do
    path_ = "/v1/package/version/readme"
    headers = []
    query_ = []
    query_ = if !is_nil(repository) do
      [{"repository", repository} | query_]
    else
      query_
    end
    query_ = if !is_nil(package_version) do
      [{"version", package_version} | query_]
    else
      query_
    end
    query_ = if !is_nil(package) do
      [{"package", package} | query_]
    else
      query_
    end
    query_ = if !is_nil(namespace) do
      [{"namespace", namespace} | query_]
    else
      query_
    end
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the endpoint of a repository for a specific package format. A
  repository has one endpoint for each package format:

  <ul> <li> `npm`

  </li> <li> `pypi`

  </li> <li> `maven`

  </li> </ul>
  """
  def get_repository_endpoint(client, domain, domain_owner \\ nil, format, repository, options \\ []) do
    path_ = "/v1/repository/endpoint"
    headers = []
    query_ = []
    query_ = if !is_nil(repository) do
      [{"repository", repository} | query_]
    else
      query_
    end
    query_ = if !is_nil(format) do
      [{"format", format} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the resource policy that is set on a repository.
  """
  def get_repository_permissions_policy(client, domain, domain_owner \\ nil, repository, options \\ []) do
    path_ = "/v1/repository/permissions/policy"
    headers = []
    query_ = []
    query_ = if !is_nil(repository) do
      [{"repository", repository} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_owner) do
      [{"domain-owner", domain_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain) do
      [{"domain", domain} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of `
  [DomainSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  ` objects for all domains owned by the AWS account that makes this call.
  Each returned `DomainSummary` object contains information about a domain.
  """
  def list_domains(client, input, options \\ []) do
    path_ = "/v1/domains"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of [ `AssetSummary`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)
  objects for assets in a package version.
  """
  def list_package_version_assets(client, input, options \\ []) do
    path_ = "/v1/package/version/assets"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the direct dependencies for a package version. The dependencies are
  returned as [ `PackageDependency`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)
  objects. CodeArtifact extracts the dependencies for a package version from
  the metadata file for the package format (for example, the `package.json`
  file for npm packages and the `pom.xml` file for Maven). Any package
  version dependencies that are not listed in the configuration file are not
  returned.
  """
  def list_package_version_dependencies(client, input, options \\ []) do
    path_ = "/v1/package/version/dependencies"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"packageVersion", "version"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of [ `PackageVersionSummary`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)
  objects for package versions in a repository that match the request
  parameters.
  """
  def list_package_versions(client, input, options \\ []) do
    path_ = "/v1/package/versions"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"package", "package"},
        {"repository", "repository"},
        {"sortBy", "sortBy"},
        {"status", "status"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of [ `PackageSummary`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)
  objects for packages in a repository that match the request parameters.
  """
  def list_packages(client, input, options \\ []) do
    path_ = "/v1/packages"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"packagePrefix", "package-prefix"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of [ `RepositorySummary`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
  objects. Each `RepositorySummary` contains information about a repository
  in the specified AWS account and that matches the input parameters.
  """
  def list_repositories(client, input, options \\ []) do
    path_ = "/v1/repositories"
    headers = []
    {query_, input} =
      [
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of [ `RepositorySummary`
  ](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
  objects. Each `RepositorySummary` contains information about a repository
  in the specified domain and that matches the input parameters.
  """
  def list_repositories_in_domain(client, input, options \\ []) do
    path_ = "/v1/domain/repositories"
    headers = []
    {query_, input} =
      [
        {"administratorAccount", "administrator-account"},
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets a resource policy on a domain that specifies permissions to access it.
  """
  def put_domain_permissions_policy(client, input, options \\ []) do
    path_ = "/v1/domain/permissions/policy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the resource policy on a repository that specifies permissions to
  access it.
  """
  def put_repository_permissions_policy(client, input, options \\ []) do
    path_ = "/v1/repository/permissions/policy"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the status of one or more versions of a package.
  """
  def update_package_versions_status(client, input, options \\ []) do
    path_ = "/v1/package/versions/update_status"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"namespace", "namespace"},
        {"package", "package"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Update the properties of a repository.
  """
  def update_repository(client, input, options \\ []) do
    path_ = "/v1/repository"
    headers = []
    {query_, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "codeartifact"}
    host = build_host("codeartifact", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
