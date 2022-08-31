# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMaker do
  @moduledoc """
  Provides APIs for creating and managing SageMaker resources.

  Other Resources:

    * [SageMaker Developer Guide](https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user)

    * [Amazon Augmented AI Runtime API Reference](https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "SageMaker",
      api_version: "2017-07-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.sagemaker",
      global?: false,
      protocol: "json",
      service_id: "SageMaker",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: "SageMaker"
    }
  end

  @doc """
  Creates an *association* between the source and the destination.

  A source can be associated with multiple destinations, and a destination can be
  associated with multiple sources. An association is a lineage tracking entity.
  For more information, see [Amazon SageMaker ML Lineage Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  def add_association(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddAssociation", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified SageMaker resource.

  You can add tags to notebook instances, training jobs, hyperparameter tuning
  jobs, batch transform jobs, models, labeling jobs, work teams, endpoint
  configurations, and endpoints.

  Each tag consists of a key and an optional value. Tag keys must be unique per
  resource. For more information about tags, see For more information, see [Amazon Web Services Tagging
  Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

  Tags that you add to a hyperparameter tuning job by calling this API are also
  added to any training jobs that the hyperparameter tuning job launches after you
  call this API, but not to training jobs that the hyperparameter tuning job
  launched before you called this API. To make sure that the tags associated with
  a hyperparameter tuning job are also added to all training jobs that the
  hyperparameter tuning job launches, add the tags when you first create the
  tuning job by specifying them in the `Tags` parameter of
  `CreateHyperParameterTuningJob`

  Tags that you add to a SageMaker Studio Domain or User Profile by calling this
  API are also added to any Apps that the Domain or User Profile launches after
  you call this API, but not to Apps that the Domain or User Profile launched
  before you called this API. To make sure that the tags associated with a Domain
  or User Profile are also added to all Apps that the Domain or User Profile
  launches, add the tags when you first create the Domain or User Profile by
  specifying them in the `Tags` parameter of `CreateDomain` or
  `CreateUserProfile`.
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTags", input, options)
  end

  @doc """
  Associates a trial component with a trial.

  A trial component can be associated with multiple trials. To disassociate a
  trial component from a trial, call the `DisassociateTrialComponent` API.
  """
  def associate_trial_component(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateTrialComponent", input, options)
  end

  @doc """
  This action batch describes a list of versioned model packages
  """
  def batch_describe_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDescribeModelPackage", input, options)
  end

  @doc """
  Creates an *action*.

  An action is a lineage tracking entity that represents an action or activity.
  For example, a model deployment or an HPO job. Generally, an action involves at
  least one input or output artifact. For more information, see [Amazon SageMaker ML Lineage
  Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  def create_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAction", input, options)
  end

  @doc """
  Create a machine learning algorithm that you can use in SageMaker and list in
  the Amazon Web Services Marketplace.
  """
  def create_algorithm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAlgorithm", input, options)
  end

  @doc """
  Creates a running app for the specified UserProfile.

  Supported apps are `JupyterServer` and `KernelGateway`. This operation is
  automatically invoked by Amazon SageMaker Studio upon access to the associated
  Domain, and when new kernel configurations are selected by the user. A user may
  have multiple Apps active simultaneously.
  """
  def create_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateApp", input, options)
  end

  @doc """
  Creates a configuration for running a SageMaker image as a KernelGateway app.

  The configuration specifies the Amazon Elastic File System (EFS) storage volume
  on the image, and a list of the kernels in the image.
  """
  def create_app_image_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAppImageConfig", input, options)
  end

  @doc """
  Creates an *artifact*.

  An artifact is a lineage tracking entity that represents a URI addressable
  object or data. Some examples are the S3 URI of a dataset and the ECR registry
  path of an image. For more information, see [Amazon SageMaker ML Lineage Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  def create_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateArtifact", input, options)
  end

  @doc """
  Creates an Autopilot job.

  Find the best-performing model after you run an Autopilot job by calling .

  For information about how to use Autopilot, see [Automate Model Development with Amazon SageMaker
  Autopilot](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html).
  """
  def create_auto_ml_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAutoMLJob", input, options)
  end

  @doc """
  Creates a Git repository as a resource in your SageMaker account.

  You can associate the repository with notebook instances so that you can use Git
  source control for the notebooks you create. The Git repository is a resource in
  your SageMaker account, so it can be associated with more than one notebook
  instance, and it persists independently from the lifecycle of any notebook
  instances it is associated with.

  The repository can be hosted either in [Amazon Web Services CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
  or in any other Git repository.
  """
  def create_code_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCodeRepository", input, options)
  end

  @doc """
  Starts a model compilation job.

  After the model has been compiled, Amazon SageMaker saves the resulting model
  artifacts to an Amazon Simple Storage Service (Amazon S3) bucket that you
  specify.

  If you choose to host your model using Amazon SageMaker hosting services, you
  can use the resulting model artifacts as part of the model. You can also use the
  artifacts with Amazon Web Services IoT Greengrass. In that case, deploy them as
  an ML resource.

  In the request body, you provide the following:

    * A name for the compilation job

    * Information about the input model artifacts

    * The output location for the compiled model and the device (target)
  that the model runs on

    * The Amazon Resource Name (ARN) of the IAM role that Amazon
  SageMaker assumes to perform the model compilation job.

  You can also provide a `Tag` to track the model compilation job's resource use
  and costs. The response body contains the `CompilationJobArn` for the compiled
  job.

  To stop a model compilation job, use `StopCompilationJob`. To get information
  about a particular model compilation job, use `DescribeCompilationJob`. To get
  information about multiple model compilation jobs, use `ListCompilationJobs`.
  """
  def create_compilation_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCompilationJob", input, options)
  end

  @doc """
  Creates a *context*.

  A context is a lineage tracking entity that represents a logical grouping of
  other tracking or experiment entities. Some examples are an endpoint and a model
  package. For more information, see [Amazon SageMaker ML Lineage Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).
  """
  def create_context(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateContext", input, options)
  end

  @doc """
  Creates a definition for a job that monitors data quality and drift.

  For information about model monitor, see [Amazon SageMaker Model Monitor](https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).
  """
  def create_data_quality_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDataQualityJobDefinition", input, options)
  end

  @doc """
  Creates a device fleet.
  """
  def create_device_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDeviceFleet", input, options)
  end

  @doc """
  Creates a `Domain` used by Amazon SageMaker Studio.

  A domain consists of an associated Amazon Elastic File System (EFS) volume, a
  list of authorized users, and a variety of security, application, policy, and
  Amazon Virtual Private Cloud (VPC) configurations. An Amazon Web Services
  account is limited to one domain per region. Users within a domain can share
  notebook files and other artifacts with each other.

  ## EFS storage

  When a domain is created, an EFS volume is created for use by all of the users
  within the domain. Each user receives a private home directory within the EFS
  volume for notebooks, Git repositories, and data files.

  SageMaker uses the Amazon Web Services Key Management Service (Amazon Web
  Services KMS) to encrypt the EFS volume attached to the domain with an Amazon
  Web Services managed key by default. For more control, you can specify a
  customer managed key. For more information, see [Protect Data at Rest Using Encryption](https://docs.aws.amazon.com/sagemaker/latest/dg/encryption-at-rest.html).

  ## VPC configuration

  All SageMaker Studio traffic between the domain and the EFS volume is through
  the specified VPC and subnets. For other Studio traffic, you can specify the
  `AppNetworkAccessType` parameter. `AppNetworkAccessType` corresponds to the
  network access type that you choose when you onboard to Studio. The following
  options are available:

    * `PublicInternetOnly` - Non-EFS traffic goes through a VPC managed
  by Amazon SageMaker, which allows internet access. This is the default value.

    * `VpcOnly` - All Studio traffic is through the specified VPC and
  subnets. Internet access is disabled by default. To allow internet access, you
  must specify a NAT gateway.

  When internet access is disabled, you won't be able to run a Studio notebook or
  to train or host models unless your VPC has an interface endpoint to the
  SageMaker API and runtime or a NAT gateway and your security groups allow
  outbound connections.

  NFS traffic over TCP on port 2049 needs to be allowed in both inbound and
  outbound rules in order to launch a SageMaker Studio app successfully.

  For more information, see [Connect SageMaker Studio Notebooks to Resources in a VPC](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html).
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDomain", input, options)
  end

  @doc """
  Creates an edge deployment plan, consisting of multiple stages.

  Each stage may have a different deployment configuration and devices.
  """
  def create_edge_deployment_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEdgeDeploymentPlan", input, options)
  end

  @doc """
  Creates a new stage in an existing edge deployment plan.
  """
  def create_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEdgeDeploymentStage", input, options)
  end

  @doc """
  Starts a SageMaker Edge Manager model packaging job.

  Edge Manager will use the model artifacts from the Amazon Simple Storage Service
  bucket that you specify. After the model has been packaged, Amazon SageMaker
  saves the resulting artifacts to an S3 bucket that you specify.
  """
  def create_edge_packaging_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEdgePackagingJob", input, options)
  end

  @doc """
  Creates an endpoint using the endpoint configuration specified in the request.

  SageMaker uses the endpoint to provision resources and deploy models. You create
  the endpoint configuration with the `CreateEndpointConfig` API.

  Use this API to deploy models using SageMaker hosting services.

  For an example that calls this method when deploying a model to SageMaker
  hosting services, see the [Create Endpoint example notebook.](https://github.com/aws/amazon-sagemaker-examples/blob/master/sagemaker-fundamentals/create-endpoint/create_endpoint.ipynb)

  You must not delete an `EndpointConfig` that is in use by an endpoint that is
  live or while the `UpdateEndpoint` or `CreateEndpoint` operations are being
  performed on the endpoint. To update an endpoint, you must create a new
  `EndpointConfig`.

  The endpoint name must be unique within an Amazon Web Services Region in your
  Amazon Web Services account.

  When it receives the request, SageMaker creates the endpoint, launches the
  resources (ML compute instances), and deploys the model(s) on them.

  When you call `CreateEndpoint`, a load call is made to DynamoDB to verify that
  your endpoint configuration exists. When you read data from a DynamoDB table
  supporting [ `Eventually Consistent Reads`
  ](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
  the response might not reflect the results of a recently completed write
  operation. The response might include some stale data. If the dependent entities
  are not yet in DynamoDB, this causes a validation error. If you repeat your read
  request after a short time, the response should return the latest data. So retry
  logic is recommended to handle these possible issues. We also recommend that
  customers call `DescribeEndpointConfig` before calling `CreateEndpoint` to
  minimize the potential impact of a DynamoDB eventually consistent read.

  When SageMaker receives the request, it sets the endpoint status to `Creating`.
  After it creates the endpoint, it sets the status to `InService`. SageMaker can
  then process incoming requests for inferences. To check the status of an
  endpoint, use the `DescribeEndpoint` API.

  If any of the models hosted at this endpoint get model data from an Amazon S3
  location, SageMaker uses Amazon Web Services Security Token Service to download
  model artifacts from the S3 path you provided. Amazon Web Services STS is
  activated in your IAM user account by default. If you previously deactivated
  Amazon Web Services STS for a region, you need to reactivate Amazon Web Services
  STS for that region. For more information, see [Activating and Deactivating Amazon Web Services STS in an Amazon Web Services
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the *Amazon Web Services Identity and Access Management User Guide*.

  To add the IAM role policies for using this API operation, go to the [IAM console](https://console.aws.amazon.com/iam/), and choose Roles in the left
  navigation pane. Search the IAM role that you want to grant access to use the
  `CreateEndpoint` and `CreateEndpointConfig` API operations, add the following
  policies to the role.

     Option 1: For a full SageMaker access, search and attach the
  `AmazonSageMakerFullAccess` policy.

     Option 2: For granting a limited access to an IAM role, paste the
  following Action elements manually into the JSON file of the IAM role:

  `"Action": ["sagemaker:CreateEndpoint", "sagemaker:CreateEndpointConfig"]`  `"Resource": [`

  `"arn:aws:sagemaker:region:account-id:endpoint/endpointName"`

  `"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName"`

  `]`

  For more information, see [SageMaker API Permissions: Actions, Permissions, and Resources
  Reference](https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html).
  """
  def create_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEndpoint", input, options)
  end

  @doc """
  Creates an endpoint configuration that SageMaker hosting services uses to deploy
  models.

  In the configuration, you identify one or more models, created using the
  `CreateModel` API, to deploy and the resources that you want SageMaker to
  provision. Then you call the `CreateEndpoint` API.

  Use this API if you want to use SageMaker hosting services to deploy models into
  production.

  In the request, you define a `ProductionVariant`, for each model that you want
  to deploy. Each `ProductionVariant` parameter also describes the resources that
  you want SageMaker to provision. This includes the number and type of ML compute
  instances to deploy.

  If you are hosting multiple models, you also assign a `VariantWeight` to specify
  how much traffic you want to allocate to each model. For example, suppose that
  you want to host two models, A and B, and you assign traffic weight 2 for model
  A and 1 for model B. SageMaker distributes two-thirds of the traffic to Model A,
  and one-third to model B.

  When you call `CreateEndpoint`, a load call is made to DynamoDB to verify that
  your endpoint configuration exists. When you read data from a DynamoDB table
  supporting [ `Eventually Consistent Reads`
  ](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
  the response might not reflect the results of a recently completed write
  operation. The response might include some stale data. If the dependent entities
  are not yet in DynamoDB, this causes a validation error. If you repeat your read
  request after a short time, the response should return the latest data. So retry
  logic is recommended to handle these possible issues. We also recommend that
  customers call `DescribeEndpointConfig` before calling `CreateEndpoint` to
  minimize the potential impact of a DynamoDB eventually consistent read.
  """
  def create_endpoint_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEndpointConfig", input, options)
  end

  @doc """
  Creates an SageMaker *experiment*.

  An experiment is a collection of *trials* that are observed, compared and
  evaluated as a group. A trial is a set of steps, called *trial components*, that
  produce a machine learning model.

  The goal of an experiment is to determine the components that produce the best
  model. Multiple trials are performed, each one isolating and measuring the
  impact of a change to one or more inputs, while keeping the remaining inputs
  constant.

  When you use SageMaker Studio or the SageMaker Python SDK, all experiments,
  trials, and trial components are automatically tracked, logged, and indexed.
  When you use the Amazon Web Services SDK for Python (Boto), you must use the
  logging APIs provided by the SDK.

  You can add tags to experiments, trials, trial components and then use the
  `Search` API to search for the tags.

  To add a description to an experiment, specify the optional `Description`
  parameter. To add a description later, or to change the description, call the
  `UpdateExperiment` API.

  To get a list of all your experiments, call the `ListExperiments` API. To view
  an experiment's properties, call the `DescribeExperiment` API. To get a list of
  all the trials associated with an experiment, call the `ListTrials` API. To
  create a trial call the `CreateTrial` API.
  """
  def create_experiment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateExperiment", input, options)
  end

  @doc """
  Create a new `FeatureGroup`.

  A `FeatureGroup` is a group of `Features` defined in the `FeatureStore` to
  describe a `Record`.

  The `FeatureGroup` defines the schema and features contained in the
  FeatureGroup. A `FeatureGroup` definition is composed of a list of `Features`, a
  `RecordIdentifierFeatureName`, an `EventTimeFeatureName` and configurations for
  its `OnlineStore` and `OfflineStore`. Check [Amazon Web Services service quotas](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
  to see the `FeatureGroup`s quota for your Amazon Web Services account.

  You must include at least one of `OnlineStoreConfig` and `OfflineStoreConfig` to
  create a `FeatureGroup`.
  """
  def create_feature_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFeatureGroup", input, options)
  end

  @doc """
  Creates a flow definition.
  """
  def create_flow_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFlowDefinition", input, options)
  end

  @doc """
  Defines the settings you will use for the human review workflow user interface.

  Reviewers will see a three-panel interface with an instruction area, the item to
  review, and an input area.
  """
  def create_human_task_ui(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateHumanTaskUi", input, options)
  end

  @doc """
  Starts a hyperparameter tuning job.

  A hyperparameter tuning job finds the best version of a model by running many
  training jobs on your dataset using the algorithm you choose and values for
  hyperparameters within ranges that you specify. It then chooses the
  hyperparameter values that result in a model that performs the best, as measured
  by an objective metric that you choose.
  """
  def create_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateHyperParameterTuningJob", input, options)
  end

  @doc """
  Creates a custom SageMaker image.

  A SageMaker image is a set of image versions. Each image version represents a
  container image stored in Amazon Elastic Container Registry (ECR). For more
  information, see [Bring your own SageMaker image](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).
  """
  def create_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateImage", input, options)
  end

  @doc """
  Creates a version of the SageMaker image specified by `ImageName`.

  The version represents the Amazon Elastic Container Registry (ECR) container
  image specified by `BaseImage`.
  """
  def create_image_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateImageVersion", input, options)
  end

  @doc """
  Starts a recommendation job.

  You can create either an instance recommendation or load test job.
  """
  def create_inference_recommendations_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateInferenceRecommendationsJob", input, options)
  end

  @doc """
  Creates a job that uses workers to label the data objects in your input dataset.

  You can use the labeled data to train machine learning models.

  You can select your workforce from one of three providers:

    * A private workforce that you create. It can include employees,
  contractors, and outside experts. Use a private workforce when want the data to
  stay within your organization or when a specific set of skills is required.

    * One or more vendors that you select from the Amazon Web Services
  Marketplace. Vendors provide expertise in specific areas.

    * The Amazon Mechanical Turk workforce. This is the largest
  workforce, but it should only be used for public data or data that has been
  stripped of any personally identifiable information.

  You can also use *automated data labeling* to reduce the number of data objects
  that need to be labeled by a human. Automated data labeling uses *active
  learning* to determine if a data object can be labeled by machine or if it needs
  to be sent to a human worker. For more information, see [Using Automated Data Labeling](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html).

  The data objects to be labeled are contained in an Amazon S3 bucket. You create
  a *manifest file* that describes the location of each object. For more
  information, see [Using Input and Output Data](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html).

  The output can be used as the manifest file for another labeling job or as
  training data for your machine learning models.

  You can use this operation to create a static labeling job or a streaming
  labeling job. A static labeling job stops if all data objects in the input
  manifest file identified in `ManifestS3Uri` have been labeled. A streaming
  labeling job runs perpetually until it is manually stopped, or remains idle for
  10 days. You can send new data objects to an active (`InProgress`) streaming
  labeling job in real time. To learn how to create a static labeling job, see
  [Create a Labeling Job (API)
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html)
  in the Amazon SageMaker Developer Guide. To learn how to create a streaming
  labeling job, see [Create a Streaming Labeling Job](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html).
  """
  def create_labeling_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLabelingJob", input, options)
  end

  @doc """
  Creates a model in SageMaker.

  In the request, you name the model and describe a primary container. For the
  primary container, you specify the Docker image that contains inference code,
  artifacts (from prior training), and a custom environment map that the inference
  code uses when you deploy the model for predictions.

  Use this API to create a model if you want to use SageMaker hosting services or
  run a batch transform job.

  To host your model, you create an endpoint configuration with the
  `CreateEndpointConfig` API, and then create an endpoint with the
  `CreateEndpoint` API. SageMaker then deploys all of the containers that you
  defined for the model in the hosting environment.

  For an example that calls this method when deploying a model to SageMaker
  hosting services, see [Create a Model (Amazon Web Services SDK for Python (Boto 3)).](https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-deployment.html#realtime-endpoints-deployment-create-model)

  To run a batch transform using your model, you start a job with the
  `CreateTransformJob` API. SageMaker uses your model and your dataset to get
  inferences which are then saved to a specified S3 location.

  In the request, you also provide an IAM role that SageMaker can assume to access
  model artifacts and docker image for deployment on ML compute hosting instances
  or for batch transform jobs. In addition, you also use the IAM role to manage
  permissions the inference code needs. For example, if the inference code access
  any other Amazon Web Services resources, you grant necessary permissions via
  this role.
  """
  def create_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModel", input, options)
  end

  @doc """
  Creates the definition for a model bias job.
  """
  def create_model_bias_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModelBiasJobDefinition", input, options)
  end

  @doc """
  Creates the definition for a model explainability job.
  """
  def create_model_explainability_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "CreateModelExplainabilityJobDefinition",
      input,
      options
    )
  end

  @doc """
  Creates a model package that you can use to create SageMaker models or list on
  Amazon Web Services Marketplace, or a versioned model that is part of a model
  group.

  Buyers can subscribe to model packages listed on Amazon Web Services Marketplace
  to create models in SageMaker.

  To create a model package by specifying a Docker container that contains your
  inference code and the Amazon S3 location of your model artifacts, provide
  values for `InferenceSpecification`. To create a model from an algorithm
  resource that you created or subscribed to in Amazon Web Services Marketplace,
  provide a value for `SourceAlgorithmSpecification`.

  There are two types of model packages:

     Versioned - a model that is part of a model group in the model
  registry.

     Unversioned - a model package that is not part of a model group.
  """
  def create_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModelPackage", input, options)
  end

  @doc """
  Creates a model group.

  A model group contains a group of model versions.
  """
  def create_model_package_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModelPackageGroup", input, options)
  end

  @doc """
  Creates a definition for a job that monitors model quality and drift.

  For information about model monitor, see [Amazon SageMaker Model Monitor](https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).
  """
  def create_model_quality_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModelQualityJobDefinition", input, options)
  end

  @doc """
  Creates a schedule that regularly starts Amazon SageMaker Processing Jobs to
  monitor the data captured for an Amazon SageMaker Endoint.
  """
  def create_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateMonitoringSchedule", input, options)
  end

  @doc """
  Creates an SageMaker notebook instance.

  A notebook instance is a machine learning (ML) compute instance running on a
  Jupyter notebook.

  In a `CreateNotebookInstance` request, specify the type of ML compute instance
  that you want to run. SageMaker launches the instance, installs common libraries
  that you can use to explore datasets for model training, and attaches an ML
  storage volume to the notebook instance.

  SageMaker also provides a set of example notebooks. Each notebook demonstrates
  how to use SageMaker with a specific algorithm or with a machine learning
  framework.

  After receiving the request, SageMaker does the following:

    1. Creates a network interface in the SageMaker VPC.

    2. (Option) If you specified `SubnetId`, SageMaker creates a network
  interface in your own VPC, which is inferred from the subnet ID that you provide
  in the input. When creating this network interface, SageMaker attaches the
  security group that you specified in the request to the network interface that
  it creates in your VPC.

    3. Launches an EC2 instance of the type specified in the request in
  the SageMaker VPC. If you specified `SubnetId` of your VPC, SageMaker specifies
  both network interfaces when launching this instance. This enables inbound
  traffic from your own VPC to the notebook instance, assuming that the security
  groups allow it.

  After creating the notebook instance, SageMaker returns its Amazon Resource Name
  (ARN). You can't change the name of a notebook instance after you create it.

  After SageMaker creates the notebook instance, you can connect to the Jupyter
  server and work in Jupyter notebooks. For example, you can write code to explore
  a dataset that you can use for model training, train a model, host models by
  creating SageMaker endpoints, and validate hosted models.

  For more information, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
  """
  def create_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateNotebookInstance", input, options)
  end

  @doc """
  Creates a lifecycle configuration that you can associate with a notebook
  instance.

  A *lifecycle configuration* is a collection of shell scripts that run when you
  create or start a notebook instance.

  Each lifecycle configuration script has a limit of 16384 characters.

  The value of the `$PATH` environment variable that is available to both scripts
  is `/sbin:bin:/usr/sbin:/usr/bin`.

  View CloudWatch Logs for notebook instance lifecycle configurations in log group
  `/aws/sagemaker/NotebookInstances` in log stream
  `[notebook-instance-name]/[LifecycleConfigHook]`.  Lifecycle configuration scripts cannot run for longer than 5 minutes. If a
  script runs for longer than 5 minutes, it fails and the notebook instance is not
  created or started.

  For information about notebook instance lifestyle configurations, see [Step 2.1:
  (Optional) Customize a Notebook
  Instance](https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).
  """
  def create_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "CreateNotebookInstanceLifecycleConfig",
      input,
      options
    )
  end

  @doc """
  Creates a pipeline using a JSON pipeline definition.
  """
  def create_pipeline(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePipeline", input, options)
  end

  @doc """
  Creates a URL for a specified UserProfile in a Domain.

  When accessed in a web browser, the user will be automatically signed in to
  Amazon SageMaker Studio, and granted access to all of the Apps and files
  associated with the Domain's Amazon Elastic File System (EFS) volume. This
  operation can only be called when the authentication mode equals IAM.

  The IAM role or user used to call this API defines the permissions to access the
  app. Once the presigned URL is created, no additional permission is required to
  access this URL. IAM authorization policies for this API are also enforced for
  every HTTP request and WebSocket frame that attempts to connect to the app.

  You can restrict access to this API and to the URL that it returns to a list of
  IP addresses, Amazon VPCs or Amazon VPC Endpoints that you specify. For more
  information, see [Connect to SageMaker Studio Through an Interface VPC Endpoint](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-interface-endpoint.html)
  .

  The URL that you get from a call to `CreatePresignedDomainUrl` has a default
  timeout of 5 minutes. You can configure this value using `ExpiresInSeconds`. If
  you try to use the URL after the timeout limit expires, you are directed to the
  Amazon Web Services console sign-in page.
  """
  def create_presigned_domain_url(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePresignedDomainUrl", input, options)
  end

  @doc """
  Returns a URL that you can use to connect to the Jupyter server from a notebook
  instance.

  In the SageMaker console, when you choose `Open` next to a notebook instance,
  SageMaker opens a new tab showing the Jupyter server home page from the notebook
  instance. The console uses this API to get the URL and show the page.

  The IAM role or user used to call this API defines the permissions to access the
  notebook instance. Once the presigned URL is created, no additional permission
  is required to access this URL. IAM authorization policies for this API are also
  enforced for every HTTP request and WebSocket frame that attempts to connect to
  the notebook instance.

  You can restrict access to this API and to the URL that it returns to a list of
  IP addresses that you specify. Use the `NotIpAddress` condition operator and the
  `aws:SourceIP` condition context key to specify the list of IP addresses that
  you want to have access to the notebook instance. For more information, see
  [Limit Access to a Notebook Instance by IP Address](https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter).

  The URL that you get from a call to `CreatePresignedNotebookInstanceUrl` is
  valid only for 5 minutes. If you try to use the URL after the 5-minute limit
  expires, you are directed to the Amazon Web Services console sign-in page.
  """
  def create_presigned_notebook_instance_url(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePresignedNotebookInstanceUrl", input, options)
  end

  @doc """
  Creates a processing job.
  """
  def create_processing_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProcessingJob", input, options)
  end

  @doc """
  Creates a machine learning (ML) project that can contain one or more templates
  that set up an ML pipeline from training to deploying an approved model.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProject", input, options)
  end

  @doc """
  Creates a new Studio Lifecycle Configuration.
  """
  def create_studio_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateStudioLifecycleConfig", input, options)
  end

  @doc """
  Starts a model training job.

  After training completes, SageMaker saves the resulting model artifacts to an
  Amazon S3 location that you specify.

  If you choose to host your model using SageMaker hosting services, you can use
  the resulting model artifacts as part of the model. You can also use the
  artifacts in a machine learning service other than SageMaker, provided that you
  know how to use them for inference.

  In the request body, you provide the following:

    * `AlgorithmSpecification` - Identifies the training algorithm to
  use.

    * `HyperParameters` - Specify these algorithm-specific parameters to
  enable the estimation of model parameters during training. Hyperparameters can
  be tuned to optimize this learning process. For a list of hyperparameters for
  each training algorithm provided by SageMaker, see
  [Algorithms](https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).     * `InputDataConfig` - Describes the training dataset and the Amazon
  S3, EFS, or FSx location where it is stored.

    * `OutputDataConfig` - Identifies the Amazon S3 bucket where you
  want SageMaker to save the results of model training.

    * `ResourceConfig` - Identifies the resources, ML compute instances,
  and ML storage volumes to deploy for model training. In distributed training,
  you specify more than one instance.

    * `EnableManagedSpotTraining` - Optimize the cost of training
  machine learning models by up to 80% by using Amazon EC2 Spot instances. For
  more information, see [Managed Spot
  Training](https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html).

    * `RoleArn` - The Amazon Resource Name (ARN) that SageMaker assumes
  to perform tasks on your behalf during model training. You must grant this role
  the necessary permissions so that SageMaker can successfully complete model
  training.

    * `StoppingCondition` - To help cap training costs, use
  `MaxRuntimeInSeconds` to set a time limit for training. Use
  `MaxWaitTimeInSeconds` to specify how long a managed spot training job has to
  complete.

    * `Environment` - The environment variables to set in the Docker
  container.

    * `RetryStrategy` - The number of times to retry the job when the
  job fails due to an `InternalServerError`.

  For more information about SageMaker, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
  """
  def create_training_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTrainingJob", input, options)
  end

  @doc """
  Starts a transform job.

  A transform job uses a trained model to get inferences on a dataset and saves
  these results to an Amazon S3 location that you specify.

  To perform batch transformations, you create a transform job and use the data
  that you have readily available.

  In the request body, you provide the following:

    * `TransformJobName` - Identifies the transform job. The name must
  be unique within an Amazon Web Services Region in an Amazon Web Services
  account.

    * `ModelName` - Identifies the model to use. `ModelName` must be the
  name of an existing Amazon SageMaker model in the same Amazon Web Services
  Region and Amazon Web Services account. For information on creating a model, see
  [CreateModel](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html).     * `TransformInput` - Describes the dataset to be transformed and the
  Amazon S3 location where it is stored.

    * `TransformOutput` - Identifies the Amazon S3 location where you
  want Amazon SageMaker to save the results from the transform job.

    * `TransformResources` - Identifies the ML compute instances for the
  transform job.

  For more information about how batch transformation works, see [Batch
  Transform](https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).
  """
  def create_transform_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTransformJob", input, options)
  end

  @doc """
  Creates an SageMaker *trial*.

  A trial is a set of steps called *trial components* that produce a machine
  learning model. A trial is part of a single SageMaker *experiment*.

  When you use SageMaker Studio or the SageMaker Python SDK, all experiments,
  trials, and trial components are automatically tracked, logged, and indexed.
  When you use the Amazon Web Services SDK for Python (Boto), you must use the
  logging APIs provided by the SDK.

  You can add tags to a trial and then use the `Search` API to search for the
  tags.

  To get a list of all your trials, call the `ListTrials` API. To view a trial's
  properties, call the `DescribeTrial` API. To create a trial component, call the
  `CreateTrialComponent` API.
  """
  def create_trial(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTrial", input, options)
  end

  @doc """
  Creates a *trial component*, which is a stage of a machine learning *trial*.

  A trial is composed of one or more trial components. A trial component can be
  used in multiple trials.

  Trial components include pre-processing jobs, training jobs, and batch transform
  jobs.

  When you use SageMaker Studio or the SageMaker Python SDK, all experiments,
  trials, and trial components are automatically tracked, logged, and indexed.
  When you use the Amazon Web Services SDK for Python (Boto), you must use the
  logging APIs provided by the SDK.

  You can add tags to a trial component and then use the `Search` API to search
  for the tags.
  """
  def create_trial_component(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTrialComponent", input, options)
  end

  @doc """
  Creates a user profile.

  A user profile represents a single user within a domain, and is the main way to
  reference a "person" for the purposes of sharing, reporting, and other
  user-oriented features. This entity is created when a user onboards to Amazon
  SageMaker Studio. If an administrator invites a person by email or imports them
  from SSO, a user profile is automatically created. A user profile is the primary
  holder of settings for an individual user and has a reference to the user's
  private Amazon Elastic File System (EFS) home directory.
  """
  def create_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUserProfile", input, options)
  end

  @doc """
  Use this operation to create a workforce.

  This operation will return an error if a workforce already exists in the Amazon
  Web Services Region that you specify. You can only create one workforce in each
  Amazon Web Services Region per Amazon Web Services account.

  If you want to create a new workforce in an Amazon Web Services Region where a
  workforce already exists, use the API operation to delete the existing workforce
  and then use `CreateWorkforce` to create a new workforce.

  To create a private workforce using Amazon Cognito, you must specify a Cognito
  user pool in `CognitoConfig`. You can also create an Amazon Cognito workforce
  using the Amazon SageMaker console. For more information, see [ Create a Private Workforce (Amazon
  Cognito)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).

  To create a private workforce using your own OIDC Identity Provider (IdP),
  specify your IdP configuration in `OidcConfig`. Your OIDC IdP must support
  *groups* because groups are used by Ground Truth and Amazon A2I to create work
  teams. For more information, see [ Create a Private Workforce (OIDC IdP)](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html).
  """
  def create_workforce(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateWorkforce", input, options)
  end

  @doc """
  Creates a new work team for labeling your data.

  A work team is defined by one or more Amazon Cognito user pools. You must first
  create the user pools before you can create a work team.

  You cannot create more than 25 work teams in an account and region.
  """
  def create_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateWorkteam", input, options)
  end

  @doc """
  Deletes an action.
  """
  def delete_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAction", input, options)
  end

  @doc """
  Removes the specified algorithm from your account.
  """
  def delete_algorithm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAlgorithm", input, options)
  end

  @doc """
  Used to stop and delete an app.
  """
  def delete_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteApp", input, options)
  end

  @doc """
  Deletes an AppImageConfig.
  """
  def delete_app_image_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAppImageConfig", input, options)
  end

  @doc """
  Deletes an artifact.

  Either `ArtifactArn` or `Source` must be specified.
  """
  def delete_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteArtifact", input, options)
  end

  @doc """
  Deletes an association.
  """
  def delete_association(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAssociation", input, options)
  end

  @doc """
  Deletes the specified Git repository from your account.
  """
  def delete_code_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCodeRepository", input, options)
  end

  @doc """
  Deletes an context.
  """
  def delete_context(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteContext", input, options)
  end

  @doc """
  Deletes a data quality monitoring job definition.
  """
  def delete_data_quality_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDataQualityJobDefinition", input, options)
  end

  @doc """
  Deletes a fleet.
  """
  def delete_device_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDeviceFleet", input, options)
  end

  @doc """
  Used to delete a domain.

  If you onboarded with IAM mode, you will need to delete your domain to onboard
  again using SSO. Use with caution. All of the members of the domain will lose
  access to their EFS volume, including data, notebooks, and other artifacts.
  """
  def delete_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDomain", input, options)
  end

  @doc """
  Deletes an edge deployment plan if (and only if) all the stages in the plan are
  inactive or there are no stages in the plan.
  """
  def delete_edge_deployment_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEdgeDeploymentPlan", input, options)
  end

  @doc """
  Delete a stage in an edge deployment plan if (and only if) the stage is
  inactive.
  """
  def delete_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEdgeDeploymentStage", input, options)
  end

  @doc """
  Deletes an endpoint.

  SageMaker frees up all of the resources that were deployed when the endpoint was
  created.

  SageMaker retires any custom KMS key grants associated with the endpoint,
  meaning you don't need to use the
  [RevokeGrant](http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html) API call.

  When you delete your endpoint, SageMaker asynchronously deletes associated
  endpoint resources such as KMS key grants. You might still see these resources
  in your account for a few minutes after deleting your endpoint. Do not delete or
  revoke the permissions for your `
  [ExecutionRoleArn](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html#sagemaker-CreateModel-request-ExecutionRoleArn)
  `, otherwise SageMaker cannot delete these resources.
  """
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an endpoint configuration.

  The `DeleteEndpointConfig` API deletes only the specified configuration. It does
  not delete endpoints created using the configuration.

  You must not delete an `EndpointConfig` in use by an endpoint that is live or
  while the `UpdateEndpoint` or `CreateEndpoint` operations are being performed on
  the endpoint. If you delete the `EndpointConfig` of an endpoint that is active
  or being created or updated you may lose visibility into the instance type the
  endpoint is using. The endpoint must be deleted in order to stop incurring
  charges.
  """
  def delete_endpoint_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEndpointConfig", input, options)
  end

  @doc """
  Deletes an SageMaker experiment.

  All trials associated with the experiment must be deleted first. Use the
  `ListTrials` API to get a list of the trials associated with the experiment.
  """
  def delete_experiment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteExperiment", input, options)
  end

  @doc """
  Delete the `FeatureGroup` and any data that was written to the `OnlineStore` of
  the `FeatureGroup`.

  Data cannot be accessed from the `OnlineStore` immediately after
  `DeleteFeatureGroup` is called.

  Data written into the `OfflineStore` will not be deleted. The Amazon Web
  Services Glue database and tables that are automatically created for your
  `OfflineStore` are not deleted.
  """
  def delete_feature_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFeatureGroup", input, options)
  end

  @doc """
  Deletes the specified flow definition.
  """
  def delete_flow_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFlowDefinition", input, options)
  end

  @doc """
  Use this operation to delete a human task user interface (worker task template).

  To see a list of human task user interfaces (work task templates) in your
  account, use . When you delete a worker task template, it no longer appears when
  you call `ListHumanTaskUis`.
  """
  def delete_human_task_ui(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteHumanTaskUi", input, options)
  end

  @doc """
  Deletes a SageMaker image and all versions of the image.

  The container images aren't deleted.
  """
  def delete_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteImage", input, options)
  end

  @doc """
  Deletes a version of a SageMaker image.

  The container image the version represents isn't deleted.
  """
  def delete_image_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteImageVersion", input, options)
  end

  @doc """
  Deletes a model.

  The `DeleteModel` API deletes only the model entry that was created in SageMaker
  when you called the `CreateModel` API. It does not delete model artifacts,
  inference code, or the IAM role that you specified when creating the model.
  """
  def delete_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModel", input, options)
  end

  @doc """
  Deletes an Amazon SageMaker model bias job definition.
  """
  def delete_model_bias_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelBiasJobDefinition", input, options)
  end

  @doc """
  Deletes an Amazon SageMaker model explainability job definition.
  """
  def delete_model_explainability_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DeleteModelExplainabilityJobDefinition",
      input,
      options
    )
  end

  @doc """
  Deletes a model package.

  A model package is used to create SageMaker models or list on Amazon Web
  Services Marketplace. Buyers can subscribe to model packages listed on Amazon
  Web Services Marketplace to create models in SageMaker.
  """
  def delete_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelPackage", input, options)
  end

  @doc """
  Deletes the specified model group.
  """
  def delete_model_package_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelPackageGroup", input, options)
  end

  @doc """
  Deletes a model group resource policy.
  """
  def delete_model_package_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelPackageGroupPolicy", input, options)
  end

  @doc """
  Deletes the secified model quality monitoring job definition.
  """
  def delete_model_quality_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelQualityJobDefinition", input, options)
  end

  @doc """
  Deletes a monitoring schedule.

  Also stops the schedule had not already been stopped. This does not delete the
  job execution history of the monitoring schedule.
  """
  def delete_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteMonitoringSchedule", input, options)
  end

  @doc """
  Deletes an SageMaker notebook instance.

  Before you can delete a notebook instance, you must call the
  `StopNotebookInstance` API.

  When you delete a notebook instance, you lose all of your data. SageMaker
  removes the ML compute instance, and deletes the ML storage volume and the
  network interface associated with the notebook instance.
  """
  def delete_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNotebookInstance", input, options)
  end

  @doc """
  Deletes a notebook instance lifecycle configuration.
  """
  def delete_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DeleteNotebookInstanceLifecycleConfig",
      input,
      options
    )
  end

  @doc """
  Deletes a pipeline if there are no running instances of the pipeline.

  To delete a pipeline, you must stop all running instances of the pipeline using
  the `StopPipelineExecution` API. When you delete a pipeline, all instances of
  the pipeline are deleted.
  """
  def delete_pipeline(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePipeline", input, options)
  end

  @doc """
  Delete the specified project.
  """
  def delete_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProject", input, options)
  end

  @doc """
  Deletes the Studio Lifecycle Configuration.

  In order to delete the Lifecycle Configuration, there must be no running apps
  using the Lifecycle Configuration. You must also remove the Lifecycle
  Configuration from UserSettings in all Domains and UserProfiles.
  """
  def delete_studio_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteStudioLifecycleConfig", input, options)
  end

  @doc """
  Deletes the specified tags from an SageMaker resource.

  To list a resource's tags, use the `ListTags` API.

  When you call this API to delete tags from a hyperparameter tuning job, the
  deleted tags are not removed from training jobs that the hyperparameter tuning
  job launched before you called this API.

  When you call this API to delete tags from a SageMaker Studio Domain or User
  Profile, the deleted tags are not removed from Apps that the SageMaker Studio
  Domain or User Profile launched before you called this API.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTags", input, options)
  end

  @doc """
  Deletes the specified trial.

  All trial components that make up the trial must be deleted first. Use the
  `DescribeTrialComponent` API to get the list of trial components.
  """
  def delete_trial(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTrial", input, options)
  end

  @doc """
  Deletes the specified trial component.

  A trial component must be disassociated from all trials before the trial
  component can be deleted. To disassociate a trial component from a trial, call
  the `DisassociateTrialComponent` API.
  """
  def delete_trial_component(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTrialComponent", input, options)
  end

  @doc """
  Deletes a user profile.

  When a user profile is deleted, the user loses access to their EFS volume,
  including data, notebooks, and other artifacts.
  """
  def delete_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUserProfile", input, options)
  end

  @doc """
  Use this operation to delete a workforce.

  If you want to create a new workforce in an Amazon Web Services Region where a
  workforce already exists, use this operation to delete the existing workforce
  and then use to create a new workforce.

  If a private workforce contains one or more work teams, you must use the
  operation to delete all work teams before you delete the workforce. If you try
  to delete a workforce that contains one or more work teams, you will recieve a
  `ResourceInUse` error.
  """
  def delete_workforce(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteWorkforce", input, options)
  end

  @doc """
  Deletes an existing work team.

  This operation can't be undone.
  """
  def delete_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteWorkteam", input, options)
  end

  @doc """
  Deregisters the specified devices.

  After you deregister a device, you will need to re-register the devices.
  """
  def deregister_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterDevices", input, options)
  end

  @doc """
  Describes an action.
  """
  def describe_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAction", input, options)
  end

  @doc """
  Returns a description of the specified algorithm that is in your account.
  """
  def describe_algorithm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAlgorithm", input, options)
  end

  @doc """
  Describes the app.
  """
  def describe_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeApp", input, options)
  end

  @doc """
  Describes an AppImageConfig.
  """
  def describe_app_image_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAppImageConfig", input, options)
  end

  @doc """
  Describes an artifact.
  """
  def describe_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeArtifact", input, options)
  end

  @doc """
  Returns information about an Amazon SageMaker AutoML job.
  """
  def describe_auto_ml_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAutoMLJob", input, options)
  end

  @doc """
  Gets details about the specified Git repository.
  """
  def describe_code_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCodeRepository", input, options)
  end

  @doc """
  Returns information about a model compilation job.

  To create a model compilation job, use `CreateCompilationJob`. To get
  information about multiple model compilation jobs, use `ListCompilationJobs`.
  """
  def describe_compilation_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCompilationJob", input, options)
  end

  @doc """
  Describes a context.
  """
  def describe_context(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeContext", input, options)
  end

  @doc """
  Gets the details of a data quality monitoring job definition.
  """
  def describe_data_quality_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataQualityJobDefinition", input, options)
  end

  @doc """
  Describes the device.
  """
  def describe_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDevice", input, options)
  end

  @doc """
  A description of the fleet the device belongs to.
  """
  def describe_device_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDeviceFleet", input, options)
  end

  @doc """
  The description of the domain.
  """
  def describe_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDomain", input, options)
  end

  @doc """
  Describes an edge deployment plan with deployment status per stage.
  """
  def describe_edge_deployment_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEdgeDeploymentPlan", input, options)
  end

  @doc """
  A description of edge packaging jobs.
  """
  def describe_edge_packaging_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEdgePackagingJob", input, options)
  end

  @doc """
  Returns the description of an endpoint.
  """
  def describe_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpoint", input, options)
  end

  @doc """
  Returns the description of an endpoint configuration created using the
  `CreateEndpointConfig` API.
  """
  def describe_endpoint_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpointConfig", input, options)
  end

  @doc """
  Provides a list of an experiment's properties.
  """
  def describe_experiment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExperiment", input, options)
  end

  @doc """
  Use this operation to describe a `FeatureGroup`.

  The response includes information on the creation time, `FeatureGroup` name, the
  unique identifier for each `FeatureGroup`, and more.
  """
  def describe_feature_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFeatureGroup", input, options)
  end

  @doc """
  Shows the metadata for a feature within a feature group.
  """
  def describe_feature_metadata(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFeatureMetadata", input, options)
  end

  @doc """
  Returns information about the specified flow definition.
  """
  def describe_flow_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFlowDefinition", input, options)
  end

  @doc """
  Returns information about the requested human task user interface (worker task
  template).
  """
  def describe_human_task_ui(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeHumanTaskUi", input, options)
  end

  @doc """
  Gets a description of a hyperparameter tuning job.
  """
  def describe_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeHyperParameterTuningJob", input, options)
  end

  @doc """
  Describes a SageMaker image.
  """
  def describe_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImage", input, options)
  end

  @doc """
  Describes a version of a SageMaker image.
  """
  def describe_image_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImageVersion", input, options)
  end

  @doc """
  Provides the results of the Inference Recommender job.

  One or more recommendation jobs are returned.
  """
  def describe_inference_recommendations_job(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeInferenceRecommendationsJob",
      input,
      options
    )
  end

  @doc """
  Gets information about a labeling job.
  """
  def describe_labeling_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLabelingJob", input, options)
  end

  @doc """
  Provides a list of properties for the requested lineage group.

  For more information, see [ Cross-Account Lineage Tracking
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
  in the *Amazon SageMaker Developer Guide*.
  """
  def describe_lineage_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLineageGroup", input, options)
  end

  @doc """
  Describes a model that you created using the `CreateModel` API.
  """
  def describe_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModel", input, options)
  end

  @doc """
  Returns a description of a model bias job definition.
  """
  def describe_model_bias_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModelBiasJobDefinition", input, options)
  end

  @doc """
  Returns a description of a model explainability job definition.
  """
  def describe_model_explainability_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeModelExplainabilityJobDefinition",
      input,
      options
    )
  end

  @doc """
  Returns a description of the specified model package, which is used to create
  SageMaker models or list them on Amazon Web Services Marketplace.

  To create models in SageMaker, buyers can subscribe to model packages listed on
  Amazon Web Services Marketplace.
  """
  def describe_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModelPackage", input, options)
  end

  @doc """
  Gets a description for the specified model group.
  """
  def describe_model_package_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModelPackageGroup", input, options)
  end

  @doc """
  Returns a description of a model quality job definition.
  """
  def describe_model_quality_job_definition(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModelQualityJobDefinition", input, options)
  end

  @doc """
  Describes the schedule for a monitoring job.
  """
  def describe_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeMonitoringSchedule", input, options)
  end

  @doc """
  Returns information about a notebook instance.
  """
  def describe_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeNotebookInstance", input, options)
  end

  @doc """
  Returns a description of a notebook instance lifecycle configuration.

  For information about notebook instance lifestyle configurations, see [Step 2.1: (Optional) Customize a Notebook
  Instance](https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).
  """
  def describe_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeNotebookInstanceLifecycleConfig",
      input,
      options
    )
  end

  @doc """
  Describes the details of a pipeline.
  """
  def describe_pipeline(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePipeline", input, options)
  end

  @doc """
  Describes the details of an execution's pipeline definition.
  """
  def describe_pipeline_definition_for_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribePipelineDefinitionForExecution",
      input,
      options
    )
  end

  @doc """
  Describes the details of a pipeline execution.
  """
  def describe_pipeline_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePipelineExecution", input, options)
  end

  @doc """
  Returns a description of a processing job.
  """
  def describe_processing_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProcessingJob", input, options)
  end

  @doc """
  Describes the details of a project.
  """
  def describe_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProject", input, options)
  end

  @doc """
  Describes the Studio Lifecycle Configuration.
  """
  def describe_studio_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeStudioLifecycleConfig", input, options)
  end

  @doc """
  Gets information about a work team provided by a vendor.

  It returns details about the subscription with a vendor in the Amazon Web
  Services Marketplace.
  """
  def describe_subscribed_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSubscribedWorkteam", input, options)
  end

  @doc """
  Returns information about a training job.

  Some of the attributes below only appear if the training job successfully
  starts. If the training job fails, `TrainingJobStatus` is `Failed` and,
  depending on the `FailureReason`, attributes like `TrainingStartTime`,
  `TrainingTimeInSeconds`, `TrainingEndTime`, and `BillableTimeInSeconds` may not
  be present in the response.
  """
  def describe_training_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTrainingJob", input, options)
  end

  @doc """
  Returns information about a transform job.
  """
  def describe_transform_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTransformJob", input, options)
  end

  @doc """
  Provides a list of a trial's properties.
  """
  def describe_trial(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTrial", input, options)
  end

  @doc """
  Provides a list of a trials component's properties.
  """
  def describe_trial_component(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTrialComponent", input, options)
  end

  @doc """
  Describes a user profile.

  For more information, see `CreateUserProfile`.
  """
  def describe_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserProfile", input, options)
  end

  @doc """
  Lists private workforce information, including workforce name, Amazon Resource
  Name (ARN), and, if applicable, allowed IP address ranges
  ([CIDRs](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)).

  Allowable IP address ranges are the IP addresses that workers can use to access
  tasks.

  This operation applies only to private workforces.
  """
  def describe_workforce(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeWorkforce", input, options)
  end

  @doc """
  Gets information about a specific work team.

  You can see information such as the create date, the last updated date,
  membership information, and the work team's Amazon Resource Name (ARN).
  """
  def describe_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeWorkteam", input, options)
  end

  @doc """
  Disables using Service Catalog in SageMaker.

  Service Catalog is used to create SageMaker projects.
  """
  def disable_sagemaker_servicecatalog_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DisableSagemakerServicecatalogPortfolio",
      input,
      options
    )
  end

  @doc """
  Disassociates a trial component from a trial.

  This doesn't effect other trials the component is associated with. Before you
  can delete a component, you must disassociate the component from all trials it
  is associated with. To associate a trial component with a trial, call the
  `AssociateTrialComponent` API.

  To get a list of the trials a component is associated with, use the `Search`
  API. Specify `ExperimentTrialComponent` for the `Resource` parameter. The list
  appears in the response under `Results.TrialComponent.Parents`.
  """
  def disassociate_trial_component(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateTrialComponent", input, options)
  end

  @doc """
  Enables using Service Catalog in SageMaker.

  Service Catalog is used to create SageMaker projects.
  """
  def enable_sagemaker_servicecatalog_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "EnableSagemakerServicecatalogPortfolio",
      input,
      options
    )
  end

  @doc """
  Describes a fleet.
  """
  def get_device_fleet_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDeviceFleetReport", input, options)
  end

  @doc """
  The resource policy for the lineage group.
  """
  def get_lineage_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLineageGroupPolicy", input, options)
  end

  @doc """
  Gets a resource policy that manages access for a model group.

  For information about resource policies, see [Identity-based policies and resource-based
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *Amazon Web Services Identity and Access Management User Guide.*.
  """
  def get_model_package_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetModelPackageGroupPolicy", input, options)
  end

  @doc """
  Gets the status of Service Catalog in SageMaker.

  Service Catalog is used to create SageMaker projects.
  """
  def get_sagemaker_servicecatalog_portfolio_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetSagemakerServicecatalogPortfolioStatus",
      input,
      options
    )
  end

  @doc """
  An auto-complete API for the search functionality in the Amazon SageMaker
  console.

  It returns suggestions of possible matches for the property name to use in
  `Search` queries. Provides suggestions for `HyperParameters`, `Tags`, and
  `Metrics`.
  """
  def get_search_suggestions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSearchSuggestions", input, options)
  end

  @doc """
  Lists the actions in your account and their properties.
  """
  def list_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListActions", input, options)
  end

  @doc """
  Lists the machine learning algorithms that have been created.
  """
  def list_algorithms(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAlgorithms", input, options)
  end

  @doc """
  Lists the AppImageConfigs in your account and their properties.

  The list can be filtered by creation time or modified time, and whether the
  AppImageConfig name contains a specified string.
  """
  def list_app_image_configs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAppImageConfigs", input, options)
  end

  @doc """
  Lists apps.
  """
  def list_apps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListApps", input, options)
  end

  @doc """
  Lists the artifacts in your account and their properties.
  """
  def list_artifacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListArtifacts", input, options)
  end

  @doc """
  Lists the associations in your account and their properties.
  """
  def list_associations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAssociations", input, options)
  end

  @doc """
  Request a list of jobs.
  """
  def list_auto_ml_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAutoMLJobs", input, options)
  end

  @doc """
  List the candidates created for the job.
  """
  def list_candidates_for_auto_ml_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCandidatesForAutoMLJob", input, options)
  end

  @doc """
  Gets a list of the Git repositories in your account.
  """
  def list_code_repositories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCodeRepositories", input, options)
  end

  @doc """
  Lists model compilation jobs that satisfy various filters.

  To create a model compilation job, use `CreateCompilationJob`. To get
  information about a particular model compilation job you have created, use
  `DescribeCompilationJob`.
  """
  def list_compilation_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCompilationJobs", input, options)
  end

  @doc """
  Lists the contexts in your account and their properties.
  """
  def list_contexts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListContexts", input, options)
  end

  @doc """
  Lists the data quality job definitions in your account.
  """
  def list_data_quality_job_definitions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDataQualityJobDefinitions", input, options)
  end

  @doc """
  Returns a list of devices in the fleet.
  """
  def list_device_fleets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDeviceFleets", input, options)
  end

  @doc """
  A list of devices.
  """
  def list_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDevices", input, options)
  end

  @doc """
  Lists the domains.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDomains", input, options)
  end

  @doc """
  Lists all edge deployment plans.
  """
  def list_edge_deployment_plans(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEdgeDeploymentPlans", input, options)
  end

  @doc """
  Returns a list of edge packaging jobs.
  """
  def list_edge_packaging_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEdgePackagingJobs", input, options)
  end

  @doc """
  Lists endpoint configurations.
  """
  def list_endpoint_configs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEndpointConfigs", input, options)
  end

  @doc """
  Lists endpoints.
  """
  def list_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEndpoints", input, options)
  end

  @doc """
  Lists all the experiments in your account.

  The list can be filtered to show only experiments that were created in a
  specific time range. The list can be sorted by experiment name or creation time.
  """
  def list_experiments(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListExperiments", input, options)
  end

  @doc """
  List `FeatureGroup`s based on given filter and order.
  """
  def list_feature_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFeatureGroups", input, options)
  end

  @doc """
  Returns information about the flow definitions in your account.
  """
  def list_flow_definitions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFlowDefinitions", input, options)
  end

  @doc """
  Returns information about the human task user interfaces in your account.
  """
  def list_human_task_uis(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListHumanTaskUis", input, options)
  end

  @doc """
  Gets a list of `HyperParameterTuningJobSummary` objects that describe the
  hyperparameter tuning jobs launched in your account.
  """
  def list_hyper_parameter_tuning_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListHyperParameterTuningJobs", input, options)
  end

  @doc """
  Lists the versions of a specified image and their properties.

  The list can be filtered by creation time or modified time.
  """
  def list_image_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListImageVersions", input, options)
  end

  @doc """
  Lists the images in your account and their properties.

  The list can be filtered by creation time or modified time, and whether the
  image name contains a specified string.
  """
  def list_images(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListImages", input, options)
  end

  @doc """
  Lists recommendation jobs that satisfy various filters.
  """
  def list_inference_recommendations_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInferenceRecommendationsJobs", input, options)
  end

  @doc """
  Gets a list of labeling jobs.
  """
  def list_labeling_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLabelingJobs", input, options)
  end

  @doc """
  Gets a list of labeling jobs assigned to a specified work team.
  """
  def list_labeling_jobs_for_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLabelingJobsForWorkteam", input, options)
  end

  @doc """
  A list of lineage groups shared with your Amazon Web Services account.

  For more information, see [ Cross-Account Lineage Tracking
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
  in the *Amazon SageMaker Developer Guide*.
  """
  def list_lineage_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLineageGroups", input, options)
  end

  @doc """
  Lists model bias jobs definitions that satisfy various filters.
  """
  def list_model_bias_job_definitions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModelBiasJobDefinitions", input, options)
  end

  @doc """
  Lists model explainability job definitions that satisfy various filters.
  """
  def list_model_explainability_job_definitions(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListModelExplainabilityJobDefinitions",
      input,
      options
    )
  end

  @doc """
  Lists the domain, framework, task, and model name of standard machine learning
  models found in common model zoos.
  """
  def list_model_metadata(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModelMetadata", input, options)
  end

  @doc """
  Gets a list of the model groups in your Amazon Web Services account.
  """
  def list_model_package_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModelPackageGroups", input, options)
  end

  @doc """
  Lists the model packages that have been created.
  """
  def list_model_packages(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModelPackages", input, options)
  end

  @doc """
  Gets a list of model quality monitoring job definitions in your account.
  """
  def list_model_quality_job_definitions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModelQualityJobDefinitions", input, options)
  end

  @doc """
  Lists models created with the `CreateModel` API.
  """
  def list_models(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModels", input, options)
  end

  @doc """
  Returns list of all monitoring job executions.
  """
  def list_monitoring_executions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMonitoringExecutions", input, options)
  end

  @doc """
  Returns list of all monitoring schedules.
  """
  def list_monitoring_schedules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMonitoringSchedules", input, options)
  end

  @doc """
  Lists notebook instance lifestyle configurations created with the
  `CreateNotebookInstanceLifecycleConfig` API.
  """
  def list_notebook_instance_lifecycle_configs(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListNotebookInstanceLifecycleConfigs",
      input,
      options
    )
  end

  @doc """
  Returns a list of the SageMaker notebook instances in the requester's account in
  an Amazon Web Services Region.
  """
  def list_notebook_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListNotebookInstances", input, options)
  end

  @doc """
  Gets a list of `PipeLineExecutionStep` objects.
  """
  def list_pipeline_execution_steps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPipelineExecutionSteps", input, options)
  end

  @doc """
  Gets a list of the pipeline executions.
  """
  def list_pipeline_executions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPipelineExecutions", input, options)
  end

  @doc """
  Gets a list of parameters for a pipeline execution.
  """
  def list_pipeline_parameters_for_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPipelineParametersForExecution", input, options)
  end

  @doc """
  Gets a list of pipelines.
  """
  def list_pipelines(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPipelines", input, options)
  end

  @doc """
  Lists processing jobs that satisfy various filters.
  """
  def list_processing_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProcessingJobs", input, options)
  end

  @doc """
  Gets a list of the projects in an Amazon Web Services account.
  """
  def list_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProjects", input, options)
  end

  @doc """
  Lists devices allocated to the stage, containing detailed device information and
  deployment status.
  """
  def list_stage_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListStageDevices", input, options)
  end

  @doc """
  Lists the Studio Lifecycle Configurations in your Amazon Web Services Account.
  """
  def list_studio_lifecycle_configs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListStudioLifecycleConfigs", input, options)
  end

  @doc """
  Gets a list of the work teams that you are subscribed to in the Amazon Web
  Services Marketplace.

  The list may be empty if no work team satisfies the filter specified in the
  `NameContains` parameter.
  """
  def list_subscribed_workteams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSubscribedWorkteams", input, options)
  end

  @doc """
  Returns the tags for the specified SageMaker resource.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTags", input, options)
  end

  @doc """
  Lists training jobs.

  When `StatusEquals` and `MaxResults` are set at the same time, the `MaxResults`
  number of training jobs are first retrieved ignoring the `StatusEquals`
  parameter and then they are filtered by the `StatusEquals` parameter, which is
  returned as a response.

  For example, if `ListTrainingJobs` is invoked with the following parameters:

  `{ ... MaxResults: 100, StatusEquals: InProgress ... }`

  First, 100 trainings jobs with any status, including those other than
  `InProgress`, are selected (sorted according to the creation time, from the most
  current to the oldest). Next, those with a status of `InProgress` are returned.

  You can quickly test the API using the following Amazon Web Services CLI code.

  `aws sagemaker list-training-jobs --max-results 100 --status-equals InProgress`
  """
  def list_training_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTrainingJobs", input, options)
  end

  @doc """
  Gets a list of `TrainingJobSummary` objects that describe the training jobs that
  a hyperparameter tuning job launched.
  """
  def list_training_jobs_for_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListTrainingJobsForHyperParameterTuningJob",
      input,
      options
    )
  end

  @doc """
  Lists transform jobs.
  """
  def list_transform_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTransformJobs", input, options)
  end

  @doc """
  Lists the trial components in your account.

  You can sort the list by trial component name or creation time. You can filter
  the list to show only components that were created in a specific time range. You
  can also filter on one of the following:

    * `ExperimentName`

    * `SourceArn`

    * `TrialName`
  """
  def list_trial_components(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTrialComponents", input, options)
  end

  @doc """
  Lists the trials in your account.

  Specify an experiment name to limit the list to the trials that are part of that
  experiment. Specify a trial component name to limit the list to the trials that
  associated with that trial component. The list can be filtered to show only
  trials that were created in a specific time range. The list can be sorted by
  trial name or creation time.
  """
  def list_trials(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTrials", input, options)
  end

  @doc """
  Lists user profiles.
  """
  def list_user_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUserProfiles", input, options)
  end

  @doc """
  Use this operation to list all private and vendor workforces in an Amazon Web
  Services Region.

  Note that you can only have one private workforce per Amazon Web Services
  Region.
  """
  def list_workforces(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListWorkforces", input, options)
  end

  @doc """
  Gets a list of private work teams that you have defined in a region.

  The list may be empty if no work team satisfies the filter specified in the
  `NameContains` parameter.
  """
  def list_workteams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListWorkteams", input, options)
  end

  @doc """
  Adds a resouce policy to control access to a model group.

  For information about resoure policies, see [Identity-based policies and resource-based
  policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
  in the *Amazon Web Services Identity and Access Management User Guide.*.
  """
  def put_model_package_group_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutModelPackageGroupPolicy", input, options)
  end

  @doc """
  Use this action to inspect your lineage and discover relationships between
  entities.

  For more information, see [ Querying Lineage Entities](https://docs.aws.amazon.com/sagemaker/latest/dg/querying-lineage-entities.html)
  in the *Amazon SageMaker Developer Guide*.
  """
  def query_lineage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "QueryLineage", input, options)
  end

  @doc """
  Register devices.
  """
  def register_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterDevices", input, options)
  end

  @doc """
  Renders the UI template so that you can preview the worker's experience.
  """
  def render_ui_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RenderUiTemplate", input, options)
  end

  @doc """
  Retry the execution of the pipeline.
  """
  def retry_pipeline_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RetryPipelineExecution", input, options)
  end

  @doc """
  Finds Amazon SageMaker resources that match a search query.

  Matching resources are returned as a list of `SearchRecord` objects in the
  response. You can sort the search results by any resource property in a
  ascending or descending order.

  You can query against the following value types: numeric, text, Boolean, and
  timestamp.
  """
  def search(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Search", input, options)
  end

  @doc """
  Notifies the pipeline that the execution of a callback step failed, along with a
  message describing why.

  When a callback step is run, the pipeline generates a callback token and
  includes the token in a message sent to Amazon Simple Queue Service (Amazon
  SQS).
  """
  def send_pipeline_execution_step_failure(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendPipelineExecutionStepFailure", input, options)
  end

  @doc """
  Notifies the pipeline that the execution of a callback step succeeded and
  provides a list of the step's output parameters.

  When a callback step is run, the pipeline generates a callback token and
  includes the token in a message sent to Amazon Simple Queue Service (Amazon
  SQS).
  """
  def send_pipeline_execution_step_success(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendPipelineExecutionStepSuccess", input, options)
  end

  @doc """
  Starts a stage in an edge deployment plan.
  """
  def start_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartEdgeDeploymentStage", input, options)
  end

  @doc """
  Starts a previously stopped monitoring schedule.

  By default, when you successfully create a new schedule, the status of a
  monitoring schedule is `scheduled`.
  """
  def start_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartMonitoringSchedule", input, options)
  end

  @doc """
  Launches an ML compute instance with the latest version of the libraries and
  attaches your ML storage volume.

  After configuring the notebook instance, SageMaker sets the notebook instance
  status to `InService`. A notebook instance's status must be `InService` before
  you can connect to your Jupyter notebook.
  """
  def start_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartNotebookInstance", input, options)
  end

  @doc """
  Starts a pipeline execution.
  """
  def start_pipeline_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartPipelineExecution", input, options)
  end

  @doc """
  A method for forcing the termination of a running job.
  """
  def stop_auto_ml_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopAutoMLJob", input, options)
  end

  @doc """
  Stops a model compilation job.

  To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal. This
  gracefully shuts the job down. If the job hasn't stopped, it sends the SIGKILL
  signal.

  When it receives a `StopCompilationJob` request, Amazon SageMaker changes the
  `CompilationJobSummary$CompilationJobStatus` of the job to `Stopping`. After
  Amazon SageMaker stops the job, it sets the
  `CompilationJobSummary$CompilationJobStatus` to `Stopped`.
  """
  def stop_compilation_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopCompilationJob", input, options)
  end

  @doc """
  Stops a stage in an edge deployment plan.
  """
  def stop_edge_deployment_stage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopEdgeDeploymentStage", input, options)
  end

  @doc """
  Request to stop an edge packaging job.
  """
  def stop_edge_packaging_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopEdgePackagingJob", input, options)
  end

  @doc """
  Stops a running hyperparameter tuning job and all running training jobs that the
  tuning job launched.

  All model artifacts output from the training jobs are stored in Amazon Simple
  Storage Service (Amazon S3). All data that the training jobs write to Amazon
  CloudWatch Logs are still available in CloudWatch. After the tuning job moves to
  the `Stopped` state, it releases all reserved resources for the tuning job.
  """
  def stop_hyper_parameter_tuning_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopHyperParameterTuningJob", input, options)
  end

  @doc """
  Stops an Inference Recommender job.
  """
  def stop_inference_recommendations_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopInferenceRecommendationsJob", input, options)
  end

  @doc """
  Stops a running labeling job.

  A job that is stopped cannot be restarted. Any results obtained before the job
  is stopped are placed in the Amazon S3 output bucket.
  """
  def stop_labeling_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopLabelingJob", input, options)
  end

  @doc """
  Stops a previously started monitoring schedule.
  """
  def stop_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopMonitoringSchedule", input, options)
  end

  @doc """
  Terminates the ML compute instance.

  Before terminating the instance, SageMaker disconnects the ML storage volume
  from it. SageMaker preserves the ML storage volume. SageMaker stops charging you
  for the ML compute instance when you call `StopNotebookInstance`.

  To access data on the ML storage volume for a notebook instance that has been
  terminated, call the `StartNotebookInstance` API. `StartNotebookInstance`
  launches another ML compute instance, configures it, and attaches the preserved
  ML storage volume so you can continue your work.
  """
  def stop_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopNotebookInstance", input, options)
  end

  @doc """
  Stops a pipeline execution.

  ## Callback Step

  A pipeline execution won't stop while a callback step is running. When you call
  `StopPipelineExecution` on a pipeline execution with a running callback step,
  SageMaker Pipelines sends an additional Amazon SQS message to the specified SQS
  queue. The body of the SQS message contains a "Status" field which is set to
  "Stopping".

  You should add logic to your Amazon SQS message consumer to take any needed
  action (for example, resource cleanup) upon receipt of the message followed by a
  call to `SendPipelineExecutionStepSuccess` or
  `SendPipelineExecutionStepFailure`.

  Only when SageMaker Pipelines receives one of these calls will it stop the
  pipeline execution.

  ## Lambda Step

  A pipeline execution can't be stopped while a lambda step is running because the
  Lambda function invoked by the lambda step can't be stopped. If you attempt to
  stop the execution while the Lambda function is running, the pipeline waits for
  the Lambda function to finish or until the timeout is hit, whichever occurs
  first, and then stops. If the Lambda function finishes, the pipeline execution
  status is `Stopped`. If the timeout is hit the pipeline execution status is
  `Failed`.
  """
  def stop_pipeline_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopPipelineExecution", input, options)
  end

  @doc """
  Stops a processing job.
  """
  def stop_processing_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopProcessingJob", input, options)
  end

  @doc """
  Stops a training job.

  To stop a job, SageMaker sends the algorithm the `SIGTERM` signal, which delays
  job termination for 120 seconds. Algorithms might use this 120-second window to
  save the model artifacts, so the results of the training is not lost.

  When it receives a `StopTrainingJob` request, SageMaker changes the status of
  the job to `Stopping`. After SageMaker stops the job, it sets the status to
  `Stopped`.
  """
  def stop_training_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopTrainingJob", input, options)
  end

  @doc """
  Stops a batch transform job.

  When Amazon SageMaker receives a `StopTransformJob` request, the status of the
  job changes to `Stopping`. After Amazon SageMaker stops the job, the status is
  set to `Stopped`. When you stop a batch transform job before it is completed,
  Amazon SageMaker doesn't store the job's output in Amazon S3.
  """
  def stop_transform_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopTransformJob", input, options)
  end

  @doc """
  Updates an action.
  """
  def update_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAction", input, options)
  end

  @doc """
  Updates the properties of an AppImageConfig.
  """
  def update_app_image_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAppImageConfig", input, options)
  end

  @doc """
  Updates an artifact.
  """
  def update_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateArtifact", input, options)
  end

  @doc """
  Updates the specified Git repository with the specified values.
  """
  def update_code_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCodeRepository", input, options)
  end

  @doc """
  Updates a context.
  """
  def update_context(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateContext", input, options)
  end

  @doc """
  Updates a fleet of devices.
  """
  def update_device_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDeviceFleet", input, options)
  end

  @doc """
  Updates one or more devices in a fleet.
  """
  def update_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDevices", input, options)
  end

  @doc """
  Updates the default settings for new user profiles in the domain.
  """
  def update_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDomain", input, options)
  end

  @doc """
  Deploys the new `EndpointConfig` specified in the request, switches to using
  newly created endpoint, and then deletes resources provisioned for the endpoint
  using the previous `EndpointConfig` (there is no availability loss).

  When SageMaker receives the request, it sets the endpoint status to `Updating`.
  After updating the endpoint, it sets the status to `InService`. To check the
  status of an endpoint, use the `DescribeEndpoint` API.

  You must not delete an `EndpointConfig` in use by an endpoint that is live or
  while the `UpdateEndpoint` or `CreateEndpoint` operations are being performed on
  the endpoint. To update an endpoint, you must create a new `EndpointConfig`.

  If you delete the `EndpointConfig` of an endpoint that is active or being
  created or updated you may lose visibility into the instance type the endpoint
  is using. The endpoint must be deleted in order to stop incurring charges.
  """
  def update_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEndpoint", input, options)
  end

  @doc """
  Updates variant weight of one or more variants associated with an existing
  endpoint, or capacity of one variant associated with an existing endpoint.

  When it receives the request, SageMaker sets the endpoint status to `Updating`.
  After updating the endpoint, it sets the status to `InService`. To check the
  status of an endpoint, use the `DescribeEndpoint` API.
  """
  def update_endpoint_weights_and_capacities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEndpointWeightsAndCapacities", input, options)
  end

  @doc """
  Adds, updates, or removes the description of an experiment.

  Updates the display name of an experiment.
  """
  def update_experiment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateExperiment", input, options)
  end

  @doc """
  Updates the feature group.
  """
  def update_feature_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFeatureGroup", input, options)
  end

  @doc """
  Updates the description and parameters of the feature group.
  """
  def update_feature_metadata(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFeatureMetadata", input, options)
  end

  @doc """
  Updates the properties of a SageMaker image.

  To change the image's tags, use the `AddTags` and `DeleteTags` APIs.
  """
  def update_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateImage", input, options)
  end

  @doc """
  Updates a versioned model.
  """
  def update_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateModelPackage", input, options)
  end

  @doc """
  Updates a previously created schedule.
  """
  def update_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateMonitoringSchedule", input, options)
  end

  @doc """
  Updates a notebook instance.

  NotebookInstance updates include upgrading or downgrading the ML compute
  instance used for your notebook instance to accommodate changes in your workload
  requirements.
  """
  def update_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateNotebookInstance", input, options)
  end

  @doc """
  Updates a notebook instance lifecycle configuration created with the
  `CreateNotebookInstanceLifecycleConfig` API.
  """
  def update_notebook_instance_lifecycle_config(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateNotebookInstanceLifecycleConfig",
      input,
      options
    )
  end

  @doc """
  Updates a pipeline.
  """
  def update_pipeline(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePipeline", input, options)
  end

  @doc """
  Updates a pipeline execution.
  """
  def update_pipeline_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePipelineExecution", input, options)
  end

  @doc """
  Updates a machine learning (ML) project that is created from a template that
  sets up an ML pipeline from training to deploying an approved model.

  You must not update a project that is in use. If you update the
  `ServiceCatalogProvisioningUpdateDetails` of a project that is active or being
  created, or updated, you may lose resources already created by the project.
  """
  def update_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProject", input, options)
  end

  @doc """
  Update a model training job to request a new Debugger profiling configuration.
  """
  def update_training_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTrainingJob", input, options)
  end

  @doc """
  Updates the display name of a trial.
  """
  def update_trial(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTrial", input, options)
  end

  @doc """
  Updates one or more properties of a trial component.
  """
  def update_trial_component(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTrialComponent", input, options)
  end

  @doc """
  Updates a user profile.
  """
  def update_user_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUserProfile", input, options)
  end

  @doc """
  Use this operation to update your workforce.

  You can use this operation to require that workers use specific IP addresses to
  work on tasks and to update your OpenID Connect (OIDC) Identity Provider (IdP)
  workforce configuration.

  The worker portal is now supported in VPC and public internet.

  Use `SourceIpConfig` to restrict worker access to tasks to a specific range of
  IP addresses. You specify allowed IP addresses by creating a list of up to ten
  [CIDRs](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html). By
  default, a workforce isn't restricted to specific IP addresses. If you specify a
  range of IP addresses, workers who attempt to access tasks using any IP address
  outside the specified range are denied and get a `Not Found` error message on
  the worker portal.

  To restrict access to all the workers in public internet, add the
  `SourceIpConfig` CIDR value as "0.0.0.0/0".

  Amazon SageMaker does not support Source Ip restriction for worker portals in
  VPC.

  Use `OidcConfig` to update the configuration of a workforce created using your
  own OIDC IdP.

  You can only update your OIDC IdP configuration when there are no work teams
  associated with your workforce. You can delete work teams using the operation.

  After restricting access to a range of IP addresses or updating your OIDC IdP
  configuration with this operation, you can view details about your update
  workforce using the operation.

  This operation only applies to private workforces.
  """
  def update_workforce(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateWorkforce", input, options)
  end

  @doc """
  Updates an existing work team with new member definitions or description.
  """
  def update_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateWorkteam", input, options)
  end
end
