# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Imagebuilder do
  @moduledoc """
  EC2 Image Builder is a fully managed AWS service that makes it easier to
  automate the creation, management, and deployment of customized, secure, and
  up-to-date “golden” server images that are pre-installed and pre-configured with
  software and settings to meet specific IT standards.
  """

  @doc """
  CancelImageCreation cancels the creation of Image.

  This operation can only be used on images in a non-terminal state.
  """
  def cancel_image_creation(client, input, options \\ []) do
    path_ = "/CancelImageCreation"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new component that can be used to build, validate, test, and assess
  your image.
  """
  def create_component(client, input, options \\ []) do
    path_ = "/CreateComponent"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new distribution configuration.

  Distribution configurations define and configure the outputs of your pipeline.
  """
  def create_distribution_configuration(client, input, options \\ []) do
    path_ = "/CreateDistributionConfiguration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new image.

  This request will create a new image along with all of the configured output
  resources defined in the distribution configuration.
  """
  def create_image(client, input, options \\ []) do
    path_ = "/CreateImage"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new image pipeline.

  Image pipelines enable you to automate the creation and distribution of images.
  """
  def create_image_pipeline(client, input, options \\ []) do
    path_ = "/CreateImagePipeline"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new image recipe.

  Image recipes define how images are configured, tested, and assessed.
  """
  def create_image_recipe(client, input, options \\ []) do
    path_ = "/CreateImageRecipe"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new infrastructure configuration.

  An infrastructure configuration defines the environment in which your image will
  be built and tested.
  """
  def create_infrastructure_configuration(client, input, options \\ []) do
    path_ = "/CreateInfrastructureConfiguration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a component build version.
  """
  def delete_component(client, input, options \\ []) do
    path_ = "/DeleteComponent"
    headers = []
    {query_, input} =
      [
        {"componentBuildVersionArn", "componentBuildVersionArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a distribution configuration.
  """
  def delete_distribution_configuration(client, input, options \\ []) do
    path_ = "/DeleteDistributionConfiguration"
    headers = []
    {query_, input} =
      [
        {"distributionConfigurationArn", "distributionConfigurationArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an image.
  """
  def delete_image(client, input, options \\ []) do
    path_ = "/DeleteImage"
    headers = []
    {query_, input} =
      [
        {"imageBuildVersionArn", "imageBuildVersionArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an image pipeline.
  """
  def delete_image_pipeline(client, input, options \\ []) do
    path_ = "/DeleteImagePipeline"
    headers = []
    {query_, input} =
      [
        {"imagePipelineArn", "imagePipelineArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an image recipe.
  """
  def delete_image_recipe(client, input, options \\ []) do
    path_ = "/DeleteImageRecipe"
    headers = []
    {query_, input} =
      [
        {"imageRecipeArn", "imageRecipeArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an infrastructure configuration.
  """
  def delete_infrastructure_configuration(client, input, options \\ []) do
    path_ = "/DeleteInfrastructureConfiguration"
    headers = []
    {query_, input} =
      [
        {"infrastructureConfigurationArn", "infrastructureConfigurationArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets a component object.
  """
  def get_component(client, component_build_version_arn, options \\ []) do
    path_ = "/GetComponent"
    headers = []
    query_ = []
    query_ = if !is_nil(component_build_version_arn) do
      [{"componentBuildVersionArn", component_build_version_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a component policy.
  """
  def get_component_policy(client, component_arn, options \\ []) do
    path_ = "/GetComponentPolicy"
    headers = []
    query_ = []
    query_ = if !is_nil(component_arn) do
      [{"componentArn", component_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a distribution configuration.
  """
  def get_distribution_configuration(client, distribution_configuration_arn, options \\ []) do
    path_ = "/GetDistributionConfiguration"
    headers = []
    query_ = []
    query_ = if !is_nil(distribution_configuration_arn) do
      [{"distributionConfigurationArn", distribution_configuration_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an image.
  """
  def get_image(client, image_build_version_arn, options \\ []) do
    path_ = "/GetImage"
    headers = []
    query_ = []
    query_ = if !is_nil(image_build_version_arn) do
      [{"imageBuildVersionArn", image_build_version_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an image pipeline.
  """
  def get_image_pipeline(client, image_pipeline_arn, options \\ []) do
    path_ = "/GetImagePipeline"
    headers = []
    query_ = []
    query_ = if !is_nil(image_pipeline_arn) do
      [{"imagePipelineArn", image_pipeline_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an image policy.
  """
  def get_image_policy(client, image_arn, options \\ []) do
    path_ = "/GetImagePolicy"
    headers = []
    query_ = []
    query_ = if !is_nil(image_arn) do
      [{"imageArn", image_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an image recipe.
  """
  def get_image_recipe(client, image_recipe_arn, options \\ []) do
    path_ = "/GetImageRecipe"
    headers = []
    query_ = []
    query_ = if !is_nil(image_recipe_arn) do
      [{"imageRecipeArn", image_recipe_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an image recipe policy.
  """
  def get_image_recipe_policy(client, image_recipe_arn, options \\ []) do
    path_ = "/GetImageRecipePolicy"
    headers = []
    query_ = []
    query_ = if !is_nil(image_recipe_arn) do
      [{"imageRecipeArn", image_recipe_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an infrastructure configuration.
  """
  def get_infrastructure_configuration(client, infrastructure_configuration_arn, options \\ []) do
    path_ = "/GetInfrastructureConfiguration"
    headers = []
    query_ = []
    query_ = if !is_nil(infrastructure_configuration_arn) do
      [{"infrastructureConfigurationArn", infrastructure_configuration_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Imports a component and transforms its data into a component document.
  """
  def import_component(client, input, options \\ []) do
    path_ = "/ImportComponent"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the list of component build versions for the specified semantic version.
  """
  def list_component_build_versions(client, input, options \\ []) do
    path_ = "/ListComponentBuildVersions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the list of component build versions for the specified semantic version.
  """
  def list_components(client, input, options \\ []) do
    path_ = "/ListComponents"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of distribution configurations.
  """
  def list_distribution_configurations(client, input, options \\ []) do
    path_ = "/ListDistributionConfigurations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of image build versions.
  """
  def list_image_build_versions(client, input, options \\ []) do
    path_ = "/ListImageBuildVersions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of images created by the specified pipeline.
  """
  def list_image_pipeline_images(client, input, options \\ []) do
    path_ = "/ListImagePipelineImages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of image pipelines.
  """
  def list_image_pipelines(client, input, options \\ []) do
    path_ = "/ListImagePipelines"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of image recipes.
  """
  def list_image_recipes(client, input, options \\ []) do
    path_ = "/ListImageRecipes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the list of images that you have access to.
  """
  def list_images(client, input, options \\ []) do
    path_ = "/ListImages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of infrastructure configurations.
  """
  def list_infrastructure_configurations(client, input, options \\ []) do
    path_ = "/ListInfrastructureConfigurations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the list of tags for the specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Applies a policy to a component.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API `PutComponentPolicy`, you
  must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_component_policy(client, input, options \\ []) do
    path_ = "/PutComponentPolicy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Applies a policy to an image.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API `PutImagePolicy`, you must
  also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_image_policy(client, input, options \\ []) do
    path_ = "/PutImagePolicy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Applies a policy to an image recipe.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API `PutImageRecipePolicy`,
  you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be visible to all principals with whom the resource
  is shared.
  """
  def put_image_recipe_policy(client, input, options \\ []) do
    path_ = "/PutImageRecipePolicy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Manually triggers a pipeline to create an image.
  """
  def start_image_pipeline_execution(client, input, options \\ []) do
    path_ = "/StartImagePipelineExecution"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds a tag to a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a tag from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a new distribution configuration.

  Distribution configurations define and configure the outputs of your pipeline.
  """
  def update_distribution_configuration(client, input, options \\ []) do
    path_ = "/UpdateDistributionConfiguration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a new image pipeline.

  Image pipelines enable you to automate the creation and distribution of images.
  """
  def update_image_pipeline(client, input, options \\ []) do
    path_ = "/UpdateImagePipeline"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a new infrastructure configuration.

  An infrastructure configuration defines the environment in which your image will
  be built and tested.
  """
  def update_infrastructure_configuration(client, input, options \\ []) do
    path_ = "/UpdateInfrastructureConfiguration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "imagebuilder"}
    host = build_host("imagebuilder", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
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

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
