# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codeartifact do
  @moduledoc """
  AWS CodeArtifact is a fully managed artifact repository compatible with
  language-native package managers and build tools such as npm, Apache Maven, and
  pip.

  You can use CodeArtifact to share packages with development teams and pull
  packages. Packages can be pulled from both public and CodeArtifact repositories.
  You can also create an upstream relationship between a CodeArtifact repository
  and another repository, which effectively merges their contents from the point
  of view of a package manager client.

  ## AWS CodeArtifact Components

  Use the information in this guide to help you work with the following
  CodeArtifact components:

    * **Repository## : A CodeArtifact repository contains a set of
  [package versions](https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version),
  each of which maps to a set of assets, or files. Repositories are polyglot, so a
  single repository can contain packages of any supported type. Each repository
  exposes endpoints for fetching and publishing packages using tools like the 
  `npm` ** CLI, the Maven CLI (** `mvn` **), and ** `pip` **.

    * **Domain**: Repositories are aggregated into a higher-level entity
  known as a *domain*. All package assets and metadata are stored in the domain,
  but are consumed through repositories. A given package asset, such as a Maven
  JAR file, is stored once per domain, no matter how many repositories it's
  present in. All of the assets and metadata in a domain are encrypted with the
  same customer master key (CMK) stored in AWS Key Management Service (AWS KMS).

  Each repository is a member of a single domain and can't be moved to a different
  domain.

  The domain allows organizational policy to be applied across multiple
  repositories, such as which accounts can access repositories in the domain, and
  which public repositories can be used as sources of packages.

  Although an organization can have multiple domains, we recommend a single
  production domain that contains all published artifacts so that teams can find
  and share packages across their organization.

    * **Package**: A *package* is a bundle of software and the metadata
  required to resolve dependencies and install the software. CodeArtifact supports
  [npm](https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html), [PyPI](https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html),
  and [Maven](https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven) package formats.

  In CodeArtifact, a package consists of:

      * A *name* (for example, `webpack` is the name of a
  popular npm package)

      * An optional namespace (for example, `@types` in
  `@types/node`)

      * A set of versions (for example, `1.0.0`, `1.0.1`,
  `1.0.2`, etc.)

      * Package-level metadata (for example, npm tags)

    * **Package version**: A version of a package, such as `@types/node
  12.6.9`. The version number format and semantics vary for different package
  formats. For example, npm package versions must conform to the [Semantic
  Versioning specification](https://semver.org/). In CodeArtifact, a package
  version consists of the version identifier, metadata at the package version
  level, and a set of assets.

    * **Upstream repository**: One repository is *upstream* of another
  when the package versions in it can be accessed from the repository endpoint of
  the downstream repository, effectively merging the contents of the two
  repositories from the point of view of a client. CodeArtifact allows creating an
  upstream relationship between two repositories.

    * **Asset**: An individual file stored in CodeArtifact associated
  with a package version, such as an npm `.tgz` file or Maven POM and JAR files.

  CodeArtifact supports these operations:

    * `AssociateExternalConnection`: Adds an existing external
  connection to a repository.

    * `CopyPackageVersions`: Copies package versions from one repository
  to another repository in the same domain.

    * `CreateDomain`: Creates a domain

    * `CreateRepository`: Creates a CodeArtifact repository in a domain.

    * `DeleteDomain`: Deletes a domain. You cannot delete a domain that
  contains repositories.

    * `DeleteDomainPermissionsPolicy`: Deletes the resource policy that
  is set on a domain.

    * `DeletePackageVersions`: Deletes versions of a package. After a
  package has been deleted, it can be republished, but its assets and metadata
  cannot be restored because they have been permanently removed from storage.

    * `DeleteRepository`: Deletes a repository.

    * `DeleteRepositoryPermissionsPolicy`: Deletes the resource policy
  that is set on a repository.

    * `DescribeDomain`: Returns a `DomainDescription` object that
  contains information about the requested domain.

    * `DescribePackageVersion`: Returns a
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  object that contains details about a package version.

    * `DescribeRepository`: Returns a `RepositoryDescription` object
  that contains detailed information about the requested repository.

    * `DisposePackageVersions`: Disposes versions of a package. A
  package version with the status `Disposed` cannot be restored because they have
  been permanently removed from storage.

    * `DisassociateExternalConnection`: Removes an existing external
  connection from a repository.

    * `GetAuthorizationToken`: Generates a temporary authorization token
  for accessing repositories in the domain. The token expires the authorization
  period has passed. The default authorization period is 12 hours and can be
  customized to any length with a maximum of 12 hours.

    * `GetDomainPermissionsPolicy`: Returns the policy of a resource
  that is attached to the specified domain.

    * `GetPackageVersionAsset`: Returns the contents of an asset that is
  in a package version.

    * `GetPackageVersionReadme`: Gets the readme file or descriptive
  text for a package version.

    * `GetRepositoryEndpoint`: Returns the endpoint of a repository for
  a specific package format. A repository has one endpoint for each package
  format:

      * `npm`

      * `pypi`

      * `maven`

    * `GetRepositoryPermissionsPolicy`: Returns the resource policy that
  is set on a repository.

    * `ListDomains`: Returns a list of `DomainSummary` objects. Each
  returned `DomainSummary` object contains information about a domain.

    * `ListPackages`: Lists the packages in a repository.

    * `ListPackageVersionAssets`: Lists the assets for a given package
  version.

    * `ListPackageVersionDependencies`: Returns a list of the direct
  dependencies for a package version.

    * `ListPackageVersions`: Returns a list of package versions for a
  specified package in a repository.

    * `ListRepositories`: Returns a list of repositories owned by the
  AWS account that called this method.

    * `ListRepositoriesInDomain`: Returns a list of the repositories in
  a domain.

    * `PutDomainPermissionsPolicy`: Attaches a resource policy to a
  domain.

    * `PutRepositoryPermissionsPolicy`: Sets the resource policy on a
  repository that specifies permissions to access it.

    * `UpdatePackageVersionsStatus`: Updates the status of one or more
  versions of a package.

    * `UpdateRepository`: Updates the properties of a repository.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-09-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeartifact",
      global?: false,
      protocol: "rest-json",
      service_id: "codeartifact",
      signature_version: "v4",
      signing_name: "codeartifact",
      target_prefix: nil
    }
  end

  @doc """
  Adds an existing external connection to a repository.

  One external connection is allowed per repository.

  A repository can have one or more upstream repositories, or an external
  connection.
  """
  def associate_external_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/external-connection"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Copies package versions from one repository to another repository in the same
  domain.

  You must specify `versions` or `versionRevisions`. You cannot specify both.
  """
  def copy_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/copy"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a domain.

  CodeArtifact *domains* make it easier to manage multiple repositories across an
  organization. You can use a domain to apply permissions across many repositories
  owned by different AWS accounts. An asset is stored only once in a domain, even
  if it's in multiple repositories.

  Although you can have multiple domains, we recommend a single production domain
  that contains all published artifacts so that your development teams can find
  and share packages. You can use a second pre-production domain to test changes
  to the production domain configuration.
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a repository.
  """
  def create_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a domain.

  You cannot delete a domain that contains repositories. If you want to delete a
  domain with repositories, first delete its repositories.
  """
  def delete_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the resource policy set on a domain.
  """
  def delete_domain_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/permissions/policy"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes one or more versions of a package.

  A deleted package version cannot be restored in your repository. If you want to
  remove a package version from your repository and be able to restore it later,
  set its status to `Archived`. Archived packages cannot be downloaded from a
  repository and don't show up with list package APIs (for example,
  [ListackageVersions](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html)), but you can restore them using
  [UpdatePackageVersionsStatus](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html).
  """
  def delete_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/delete"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a repository.
  """
  def delete_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the resource policy that is set on a repository.

  After a resource policy is deleted, the permissions allowed and denied by the
  deleted policy are removed. The effect of deleting a resource policy might not
  be immediate.

  Use `DeleteRepositoryPermissionsPolicy` with caution. After a policy is deleted,
  AWS users, roles, and accounts lose permissions to perform the repository
  actions granted by the deleted policy.
  """
  def delete_repository_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/permissions/policies"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"policyRevision", "policy-revision"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a
  [DomainDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html)
  object that contains information about the requested domain.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a
  [PackageVersionDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  object that contains information about the requested package version.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a `RepositoryDescription` object that contains detailed information
  about the requested repository.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Removes an existing external connection from a repository.
  """
  def disassociate_external_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/external-connection"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"externalConnection", "external-connection"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
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
  parameter to `Disposed`.

  To view information about a disposed package version, use
  [DescribePackageVersion](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html).
  """
  def dispose_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/dispose"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Generates a temporary authorization token for accessing repositories in the
  domain.

  This API requires the `codeartifact:GetAuthorizationToken` and
  `sts:GetServiceBearerToken` permissions. For more information about
  authorization tokens, see [AWS CodeArtifact authentication and tokens](https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html).

  CodeArtifact authorization tokens are valid for a period of 12 hours when
  created with the `login` command. You can call `login` periodically to refresh
  the token. When you create an authorization token with the
  `GetAuthorizationToken` API, you can set a custom authorization period, up to a
  maximum of 12 hours, with the `durationSeconds` parameter.

  The authorization period begins after `login` or `GetAuthorizationToken` is
  called. If `login` or `GetAuthorizationToken` is called while assuming a role,
  the token lifetime is independent of the maximum session duration of the role.
  For example, if you call `sts assume-role` and specify a session duration of 15
  minutes, then generate a CodeArtifact authorization token, the token will be
  valid for the full authorization period even though this is longer than the
  15-minute session duration.

  See [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) for
  more information on controlling session duration.
  """
  def get_authorization_token(%Client{} = client, input, options \\ []) do
    url_path = "/v1/authorization-token"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"durationSeconds", "duration"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the resource policy attached to the specified domain.

  The policy is a resource-based policy, not an identity-based policy. For more
  information, see [Identity-based policies and resource-based policies
  ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *AWS Identity and Access Management User Guide*.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns an asset (or file) that is in a package.

  For example, for a Maven package version, use `GetPackageVersionAsset` to
  download a `JAR` file, a `POM` file, or any other assets in the package version.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the readme file or descriptive text for a package version.

  For packages that do not contain a readme file, CodeArtifact extracts a
  description from a metadata file. For example, from the `<description>` element
  in the `pom.xml` file of a Maven package.

  The returned text might contain formatting. For example, it might contain
  formatting for Markdown or reStructuredText.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the endpoint of a repository for a specific package format.

  A repository has one endpoint for each package format:

    * `npm`

    * `pypi`

    * `maven`
  """
  def get_repository_endpoint(
        %Client{} = client,
        domain,
        domain_owner \\ nil,
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the resource policy that is set on a repository.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [DomainSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
  objects for all domains owned by the AWS account that makes this call.

  Each returned `DomainSummary` object contains information about a domain.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domains"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [AssetSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html)
  objects for assets in a package version.
  """
  def list_package_version_assets(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/assets"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the direct dependencies for a package version.

  The dependencies are returned as
  [PackageDependency](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html)
  objects. CodeArtifact extracts the dependencies for a package version from the
  metadata file for the package format (for example, the `package.json` file for
  npm packages and the `pom.xml` file for Maven). Any package version dependencies
  that are not listed in the configuration file are not returned.
  """
  def list_package_version_dependencies(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/version/dependencies"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [PackageVersionSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html)
  objects for package versions in a repository that match the request parameters.
  """
  def list_package_versions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions"
    headers = []

    {query_params, input} =
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
        {"status", "status"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [PackageSummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html)
  objects for packages in a repository that match the request parameters.
  """
  def list_packages(%Client{} = client, input, options \\ []) do
    url_path = "/v1/packages"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"format", "format"},
        {"maxResults", "max-results"},
        {"namespace", "namespace"},
        {"nextToken", "next-token"},
        {"packagePrefix", "package-prefix"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [RepositorySummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
  objects.

  Each `RepositorySummary` contains information about a repository in the
  specified AWS account and that matches the input parameters.
  """
  def list_repositories(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repositories"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "max-results"},
        {"nextToken", "next-token"},
        {"repositoryPrefix", "repository-prefix"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [RepositorySummary](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html)
  objects.

  Each `RepositorySummary` contains information about a repository in the
  specified domain and that matches the input parameters.
  """
  def list_repositories_in_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/repositories"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets information about AWS tags for a specified Amazon Resource Name (ARN) in
  AWS CodeArtifact.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets a resource policy on a domain that specifies permissions to access it.

  When you call `PutDomainPermissionsPolicy`, the resource policy on the domain is
  ignored when evaluting permissions. This ensures that the owner of a domain
  cannot lock themselves out of the domain, which would prevent them from being
  able to update the resource policy.
  """
  def put_domain_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domain/permissions/policy"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the resource policy on a repository that specifies permissions to access
  it.

  When you call `PutRepositoryPermissionsPolicy`, the resource policy on the
  repository is ignored when evaluting permissions. This ensures that the owner of
  a repository cannot lock themselves out of the repository, which would prevent
  them from being able to update the resource policy.
  """
  def put_repository_permissions_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository/permissions/policy"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds or updates tags for a resource in AWS CodeArtifact.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tag"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes tags from a resource in AWS CodeArtifact.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/untag"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the status of one or more versions of a package.
  """
  def update_package_versions_status(%Client{} = client, input, options \\ []) do
    url_path = "/v1/package/versions/update_status"
    headers = []

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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update the properties of a repository.
  """
  def update_repository(%Client{} = client, input, options \\ []) do
    url_path = "/v1/repository"
    headers = []

    {query_params, input} =
      [
        {"domain", "domain"},
        {"domainOwner", "domain-owner"},
        {"repository", "repository"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
