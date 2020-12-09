# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMaker do
  @moduledoc """
  Provides APIs for creating and managing Amazon SageMaker resources.

  Other Resources:

    * [Amazon SageMaker Developer Guide](https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user)

    * [Amazon Augmented AI Runtime API Reference](https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Adds or overwrites one or more tags for the specified Amazon SageMaker resource.

  You can add tags to notebook instances, training jobs, hyperparameter tuning
  jobs, batch transform jobs, models, labeling jobs, work teams, endpoint
  configurations, and endpoints.

  Each tag consists of a key and an optional value. Tag keys must be unique per
  resource. For more information about tags, see For more information, see [AWS Tagging
  Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

  Tags that you add to a hyperparameter tuning job by calling this API are also
  added to any training jobs that the hyperparameter tuning job launches after you
  call this API, but not to training jobs that the hyperparameter tuning job
  launched before you called this API. To make sure that the tags associated with
  a hyperparameter tuning job are also added to all training jobs that the
  hyperparameter tuning job launches, add the tags when you first create the
  tuning job by specifying them in the `Tags` parameter of
  `CreateHyperParameterTuningJob`
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
  Create a machine learning algorithm that you can use in Amazon SageMaker and
  list in the AWS Marketplace.
  """
  def create_algorithm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAlgorithm", input, options)
  end

  @doc """
  Creates a running App for the specified UserProfile.

  Supported Apps are JupyterServer and KernelGateway. This operation is
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
  Creates an Autopilot job.

  Find the best performing model after you run an Autopilot job by calling .
  Deploy that model by following the steps described in [Step 6.1: Deploy the Model to Amazon SageMaker Hosting
  Services](https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html).

  For information about how to use Autopilot, see [ Automate Model Development with Amazon SageMaker
  Autopilot](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html).
  """
  def create_auto_ml_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAutoMLJob", input, options)
  end

  @doc """
  Creates a Git repository as a resource in your Amazon SageMaker account.

  You can associate the repository with notebook instances so that you can use Git
  source control for the notebooks you create. The Git repository is a resource in
  your Amazon SageMaker account, so it can be associated with more than one
  notebook instance, and it persists independently from the lifecycle of any
  notebook instances it is associated with.

  The repository can be hosted either in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
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
  artifacts with AWS IoT Greengrass. In that case, deploy them as an ML resource.

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
  Creates a `Domain` used by Amazon SageMaker Studio.

  A domain consists of an associated Amazon Elastic File System (EFS) volume, a
  list of authorized users, and a variety of security, application, policy, and
  Amazon Virtual Private Cloud (VPC) configurations. An AWS account is limited to
  one domain per region. Users within a domain can share notebook files and other
  artifacts with each other.

  When a domain is created, an EFS volume is created for use by all of the users
  within the domain. Each user receives a private home directory within the EFS
  volume for notebooks, Git repositories, and data files.

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

  For more information, see [Connect SageMaker Studio Notebooks to Resources in a VPC](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html).
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDomain", input, options)
  end

  @doc """
  Creates an endpoint using the endpoint configuration specified in the request.

  Amazon SageMaker uses the endpoint to provision resources and deploy models. You
  create the endpoint configuration with the `CreateEndpointConfig` API.

  Use this API to deploy models using Amazon SageMaker hosting services.

  For an example that calls this method when deploying a model to Amazon SageMaker
  hosting services, see [Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto
  3)).](https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto)

  You must not delete an `EndpointConfig` that is in use by an endpoint that is
  live or while the `UpdateEndpoint` or `CreateEndpoint` operations are being
  performed on the endpoint. To update an endpoint, you must create a new
  `EndpointConfig`.

  The endpoint name must be unique within an AWS Region in your AWS account.

  When it receives the request, Amazon SageMaker creates the endpoint, launches
  the resources (ML compute instances), and deploys the model(s) on them.

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

  When Amazon SageMaker receives the request, it sets the endpoint status to
  `Creating`. After it creates the endpoint, it sets the status to `InService`.
  Amazon SageMaker can then process incoming requests for inferences. To check the
  status of an endpoint, use the `DescribeEndpoint` API.

  If any of the models hosted at this endpoint get model data from an Amazon S3
  location, Amazon SageMaker uses AWS Security Token Service to download model
  artifacts from the S3 path you provided. AWS STS is activated in your IAM user
  account by default. If you previously deactivated AWS STS for a region, you need
  to reactivate AWS STS for that region. For more information, see [Activating and Deactivating AWS STS in an AWS
  Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
  in the *AWS Identity and Access Management User Guide*.

  To add the IAM role policies for using this API operation, go to the [IAM console](https://console.aws.amazon.com/iam/), and choose Roles in the left
  navigation pane. Search the IAM role that you want to grant access to use the
  `CreateEndpoint` and `CreateEndpointConfig` API operations, add the following
  policies to the role.

     Option 1: For a full Amazon SageMaker access, search and attach the
  `AmazonSageMakerFullAccess` policy.

     Option 2: For granting a limited access to an IAM role, paste the
  following Action elements manually into the JSON file of the IAM role:

  `"Action": ["sagemaker:CreateEndpoint", "sagemaker:CreateEndpointConfig"]`  `"Resource": [`

  `"arn:aws:sagemaker:region:account-id:endpoint/endpointName"`

  `"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName"`

  `]`

  For more information, see [Amazon SageMaker API Permissions: Actions, Permissions, and Resources
  Reference](https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html).
  """
  def create_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEndpoint", input, options)
  end

  @doc """
  Creates an endpoint configuration that Amazon SageMaker hosting services uses to
  deploy models.

  In the configuration, you identify one or more models, created using the
  `CreateModel` API, to deploy and the resources that you want Amazon SageMaker to
  provision. Then you call the `CreateEndpoint` API.

  Use this API if you want to use Amazon SageMaker hosting services to deploy
  models into production.

  In the request, you define a `ProductionVariant`, for each model that you want
  to deploy. Each `ProductionVariant` parameter also describes the resources that
  you want Amazon SageMaker to provision. This includes the number and type of ML
  compute instances to deploy.

  If you are hosting multiple models, you also assign a `VariantWeight` to specify
  how much traffic you want to allocate to each model. For example, suppose that
  you want to host two models, A and B, and you assign traffic weight 2 for model
  A and 1 for model B. Amazon SageMaker distributes two-thirds of the traffic to
  Model A, and one-third to model B.

  For an example that calls this method when deploying a model to Amazon SageMaker
  hosting services, see [Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto
  3)).](https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto)

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

  When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all
  experiments, trials, and trial components are automatically tracked, logged, and
  indexed. When you use the AWS SDK for Python (Boto), you must use the logging
  APIs provided by the SDK.

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
  container image stored in Amazon Container Registry (ECR). For more information,
  see [Bring your own SageMaker image](https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).
  """
  def create_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateImage", input, options)
  end

  @doc """
  Creates a version of the SageMaker image specified by `ImageName`.

  The version represents the Amazon Container Registry (ECR) container image
  specified by `BaseImage`.
  """
  def create_image_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateImageVersion", input, options)
  end

  @doc """
  Creates a job that uses workers to label the data objects in your input dataset.

  You can use the labeled data to train machine learning models.

  You can select your workforce from one of three providers:

    * A private workforce that you create. It can include employees,
  contractors, and outside experts. Use a private workforce when want the data to
  stay within your organization or when a specific set of skills is required.

    * One or more vendors that you select from the AWS Marketplace.
  Vendors provide expertise in specific areas.

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
  """
  def create_labeling_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLabelingJob", input, options)
  end

  @doc """
  Creates a model in Amazon SageMaker.

  In the request, you name the model and describe a primary container. For the
  primary container, you specify the Docker image that contains inference code,
  artifacts (from prior training), and a custom environment map that the inference
  code uses when you deploy the model for predictions.

  Use this API to create a model if you want to use Amazon SageMaker hosting
  services or run a batch transform job.

  To host your model, you create an endpoint configuration with the
  `CreateEndpointConfig` API, and then create an endpoint with the
  `CreateEndpoint` API. Amazon SageMaker then deploys all of the containers that
  you defined for the model in the hosting environment.

  For an example that calls this method when deploying a model to Amazon SageMaker
  hosting services, see [Deploy the Model to Amazon SageMaker Hosting Services (AWS SDK for Python (Boto
  3)).](https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto)

  To run a batch transform using your model, you start a job with the
  `CreateTransformJob` API. Amazon SageMaker uses your model and your dataset to
  get inferences which are then saved to a specified S3 location.

  In the `CreateModel` request, you must define a container with the
  `PrimaryContainer` parameter.

  In the request, you also provide an IAM role that Amazon SageMaker can assume to
  access model artifacts and docker image for deployment on ML compute hosting
  instances or for batch transform jobs. In addition, you also use the IAM role to
  manage permissions the inference code needs. For example, if the inference code
  access any other AWS resources, you grant necessary permissions via this role.
  """
  def create_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModel", input, options)
  end

  @doc """
  Creates a model package that you can use to create Amazon SageMaker models or
  list on AWS Marketplace.

  Buyers can subscribe to model packages listed on AWS Marketplace to create
  models in Amazon SageMaker.

  To create a model package by specifying a Docker container that contains your
  inference code and the Amazon S3 location of your model artifacts, provide
  values for `InferenceSpecification`. To create a model from an algorithm
  resource that you created or subscribed to in AWS Marketplace, provide a value
  for `SourceAlgorithmSpecification`.
  """
  def create_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModelPackage", input, options)
  end

  @doc """
  Creates a schedule that regularly starts Amazon SageMaker Processing Jobs to
  monitor the data captured for an Amazon SageMaker Endoint.
  """
  def create_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateMonitoringSchedule", input, options)
  end

  @doc """
  Creates an Amazon SageMaker notebook instance.

  A notebook instance is a machine learning (ML) compute instance running on a
  Jupyter notebook.

  In a `CreateNotebookInstance` request, specify the type of ML compute instance
  that you want to run. Amazon SageMaker launches the instance, installs common
  libraries that you can use to explore datasets for model training, and attaches
  an ML storage volume to the notebook instance.

  Amazon SageMaker also provides a set of example notebooks. Each notebook
  demonstrates how to use Amazon SageMaker with a specific algorithm or with a
  machine learning framework.

  After receiving the request, Amazon SageMaker does the following:

    1. Creates a network interface in the Amazon SageMaker VPC.

    2. (Option) If you specified `SubnetId`, Amazon SageMaker creates a
  network interface in your own VPC, which is inferred from the subnet ID that you
  provide in the input. When creating this network interface, Amazon SageMaker
  attaches the security group that you specified in the request to the network
  interface that it creates in your VPC.

    3. Launches an EC2 instance of the type specified in the request in
  the Amazon SageMaker VPC. If you specified `SubnetId` of your VPC, Amazon
  SageMaker specifies both network interfaces when launching this instance. This
  enables inbound traffic from your own VPC to the notebook instance, assuming
  that the security groups allow it.

  After creating the notebook instance, Amazon SageMaker returns its Amazon
  Resource Name (ARN). You can't change the name of a notebook instance after you
  create it.

  After Amazon SageMaker creates the notebook instance, you can connect to the
  Jupyter server and work in Jupyter notebooks. For example, you can write code to
  explore a dataset that you can use for model training, train a model, host
  models by creating Amazon SageMaker endpoints, and validate hosted models.

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
  Creates a URL for a specified UserProfile in a Domain.

  When accessed in a web browser, the user will be automatically signed in to
  Amazon SageMaker Studio, and granted access to all of the Apps and files
  associated with the Domain's Amazon Elastic File System (EFS) volume. This
  operation can only be called when the authentication mode equals IAM.

  The URL that you get from a call to `CreatePresignedDomainUrl` is valid only for
  5 minutes. If you try to use the URL after the 5-minute limit expires, you are
  directed to the AWS console sign-in page.
  """
  def create_presigned_domain_url(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePresignedDomainUrl", input, options)
  end

  @doc """
  Returns a URL that you can use to connect to the Jupyter server from a notebook
  instance.

  In the Amazon SageMaker console, when you choose `Open` next to a notebook
  instance, Amazon SageMaker opens a new tab showing the Jupyter server home page
  from the notebook instance. The console uses this API to get the URL and show
  the page.

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
  expires, you are directed to the AWS console sign-in page.
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
  Starts a model training job.

  After training completes, Amazon SageMaker saves the resulting model artifacts
  to an Amazon S3 location that you specify.

  If you choose to host your model using Amazon SageMaker hosting services, you
  can use the resulting model artifacts as part of the model. You can also use the
  artifacts in a machine learning service other than Amazon SageMaker, provided
  that you know how to use them for inferences.

  In the request body, you provide the following:

    * `AlgorithmSpecification` - Identifies the training algorithm to
  use.

    * `HyperParameters` - Specify these algorithm-specific parameters to
  enable the estimation of model parameters during training. Hyperparameters can
  be tuned to optimize this learning process. For a list of hyperparameters for
  each training algorithm provided by Amazon SageMaker, see
  [Algorithms](https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).     * `InputDataConfig` - Describes the training dataset and the Amazon
  S3, EFS, or FSx location where it is stored.

    * `OutputDataConfig` - Identifies the Amazon S3 bucket where you
  want Amazon SageMaker to save the results of model training.

    * `ResourceConfig` - Identifies the resources, ML compute instances,
  and ML storage volumes to deploy for model training. In distributed training,
  you specify more than one instance.

    * `EnableManagedSpotTraining` - Optimize the cost of training
  machine learning models by up to 80% by using Amazon EC2 Spot instances. For
  more information, see [Managed Spot
  Training](https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html).

    * `RoleARN` - The Amazon Resource Number (ARN) that Amazon SageMaker
  assumes to perform tasks on your behalf during model training. You must grant
  this role the necessary permissions so that Amazon SageMaker can successfully
  complete model training.

    * `StoppingCondition` - To help cap training costs, use
  `MaxRuntimeInSeconds` to set a time limit for training. Use
  `MaxWaitTimeInSeconds` to specify how long you are willing to wait for a managed
  spot training job to complete.

  For more information about Amazon SageMaker, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).
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
  be unique within an AWS Region in an AWS account.

    * `ModelName` - Identifies the model to use. `ModelName` must be the
  name of an existing Amazon SageMaker model in the same AWS Region and AWS
  account. For information on creating a model, see `CreateModel`.

    * `TransformInput` - Describes the dataset to be transformed and the
  Amazon S3 location where it is stored.

    * `TransformOutput` - Identifies the Amazon S3 location where you
  want Amazon SageMaker to save the results from the transform job.

    * `TransformResources` - Identifies the ML compute instances for the
  transform job.

  For more information about how batch transformation works, see [Batch Transform](https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).
  """
  def create_transform_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTransformJob", input, options)
  end

  @doc """
  Creates an Amazon SageMaker *trial*.

  A trial is a set of steps called *trial components* that produce a machine
  learning model. A trial is part of a single Amazon SageMaker *experiment*.

  When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all
  experiments, trials, and trial components are automatically tracked, logged, and
  indexed. When you use the AWS SDK for Python (Boto), you must use the logging
  APIs provided by the SDK.

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

  When you use Amazon SageMaker Studio or the Amazon SageMaker Python SDK, all
  experiments, trials, and trial components are automatically tracked, logged, and
  indexed. When you use the AWS SDK for Python (Boto), you must use the logging
  APIs provided by the SDK.

  You can add tags to a trial component and then use the `Search` API to search
  for the tags.

  `CreateTrialComponent` can only be invoked from within an Amazon SageMaker
  managed environment. This includes Amazon SageMaker training jobs, processing
  jobs, transform jobs, and Amazon SageMaker notebooks. A call to
  `CreateTrialComponent` from outside one of these environments results in an
  error.
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

  This operation will return an error if a workforce already exists in the AWS
  Region that you specify. You can only create one workforce in each AWS Region
  per AWS account.

  If you want to create a new workforce in an AWS Region where a workforce already
  exists, use the API operation to delete the existing workforce and then use
  `CreateWorkforce` to create a new workforce.

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
  Deletes the specified Git repository from your account.
  """
  def delete_code_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCodeRepository", input, options)
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
  Deletes an endpoint.

  Amazon SageMaker frees up all of the resources that were deployed when the
  endpoint was created.

  Amazon SageMaker retires any custom KMS key grants associated with the endpoint,
  meaning you don't need to use the
  [RevokeGrant](http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html)
  API call.
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
  Deletes an Amazon SageMaker experiment.

  All trials associated with the experiment must be deleted first. Use the
  `ListTrials` API to get a list of the trials associated with the experiment.
  """
  def delete_experiment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteExperiment", input, options)
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

  The `DeleteModel` API deletes only the model entry that was created in Amazon
  SageMaker when you called the `CreateModel` API. It does not delete model
  artifacts, inference code, or the IAM role that you specified when creating the
  model.
  """
  def delete_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModel", input, options)
  end

  @doc """
  Deletes a model package.

  A model package is used to create Amazon SageMaker models or list on AWS
  Marketplace. Buyers can subscribe to model packages listed on AWS Marketplace to
  create models in Amazon SageMaker.
  """
  def delete_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelPackage", input, options)
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
  Deletes an Amazon SageMaker notebook instance.

  Before you can delete a notebook instance, you must call the
  `StopNotebookInstance` API.

  When you delete a notebook instance, you lose all of your data. Amazon SageMaker
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
  Deletes the specified tags from an Amazon SageMaker resource.

  To list a resource's tags, use the `ListTags` API.

  When you call this API to delete tags from a hyperparameter tuning job, the
  deleted tags are not removed from training jobs that the hyperparameter tuning
  job launched before you called this API.
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

  If you want to create a new workforce in an AWS Region where a workforce already
  exists, use this operation to delete the existing workforce and then use to
  create a new workforce.

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
  Returns information about an Amazon SageMaker job.
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
  The description of the domain.
  """
  def describe_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDomain", input, options)
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
  Gets information about a labeling job.
  """
  def describe_labeling_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLabelingJob", input, options)
  end

  @doc """
  Describes a model that you created using the `CreateModel` API.
  """
  def describe_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModel", input, options)
  end

  @doc """
  Returns a description of the specified model package, which is used to create
  Amazon SageMaker models or list them on AWS Marketplace.

  To create models in Amazon SageMaker, buyers can subscribe to model packages
  listed on AWS Marketplace.
  """
  def describe_model_package(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModelPackage", input, options)
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
  Returns a description of a processing job.
  """
  def describe_processing_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProcessingJob", input, options)
  end

  @doc """
  Gets information about a work team provided by a vendor.

  It returns details about the subscription with a vendor in the AWS Marketplace.
  """
  def describe_subscribed_workteam(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSubscribedWorkteam", input, options)
  end

  @doc """
  Returns information about a training job.
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
  Request a list of jobs.
  """
  def list_auto_ml_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAutoMLJobs", input, options)
  end

  @doc """
  List the Candidates created for the job.
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
  Lists the domains.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDomains", input, options)
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
  Lists the model packages that have been created.
  """
  def list_model_packages(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModelPackages", input, options)
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
  Returns a list of the Amazon SageMaker notebook instances in the requester's
  account in an AWS Region.
  """
  def list_notebook_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListNotebookInstances", input, options)
  end

  @doc """
  Lists processing jobs that satisfy various filters.
  """
  def list_processing_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProcessingJobs", input, options)
  end

  @doc """
  Gets a list of the work teams that you are subscribed to in the AWS Marketplace.

  The list may be empty if no work team satisfies the filter specified in the
  `NameContains` parameter.
  """
  def list_subscribed_workteams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSubscribedWorkteams", input, options)
  end

  @doc """
  Returns the tags for the specified Amazon SageMaker resource.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTags", input, options)
  end

  @doc """
  Lists training jobs.
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
  Use this operation to list all private and vendor workforces in an AWS Region.

  Note that you can only have one private workforce per AWS Region.
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
  Renders the UI template so that you can preview the worker's experience.
  """
  def render_ui_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RenderUiTemplate", input, options)
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
  Starts a previously stopped monitoring schedule.

  New monitoring schedules are immediately started after creation.
  """
  def start_monitoring_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartMonitoringSchedule", input, options)
  end

  @doc """
  Launches an ML compute instance with the latest version of the libraries and
  attaches your ML storage volume.

  After configuring the notebook instance, Amazon SageMaker sets the notebook
  instance status to `InService`. A notebook instance's status must be `InService`
  before you can connect to your Jupyter notebook.
  """
  def start_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartNotebookInstance", input, options)
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

  Before terminating the instance, Amazon SageMaker disconnects the ML storage
  volume from it. Amazon SageMaker preserves the ML storage volume. Amazon
  SageMaker stops charging you for the ML compute instance when you call
  `StopNotebookInstance`.

  To access data on the ML storage volume for a notebook instance that has been
  terminated, call the `StartNotebookInstance` API. `StartNotebookInstance`
  launches another ML compute instance, configures it, and attaches the preserved
  ML storage volume so you can continue your work.
  """
  def stop_notebook_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopNotebookInstance", input, options)
  end

  @doc """
  Stops a processing job.
  """
  def stop_processing_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopProcessingJob", input, options)
  end

  @doc """
  Stops a training job.

  To stop a job, Amazon SageMaker sends the algorithm the `SIGTERM` signal, which
  delays job termination for 120 seconds. Algorithms might use this 120-second
  window to save the model artifacts, so the results of the training is not lost.

  When it receives a `StopTrainingJob` request, Amazon SageMaker changes the
  status of the job to `Stopping`. After Amazon SageMaker stops the job, it sets
  the status to `Stopped`.
  """
  def stop_training_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopTrainingJob", input, options)
  end

  @doc """
  Stops a transform job.

  When Amazon SageMaker receives a `StopTransformJob` request, the status of the
  job changes to `Stopping`. After Amazon SageMaker stops the job, the status is
  set to `Stopped`. When you stop a transform job before it is completed, Amazon
  SageMaker doesn't store the job's output in Amazon S3.
  """
  def stop_transform_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopTransformJob", input, options)
  end

  @doc """
  Updates the properties of an AppImageConfig.
  """
  def update_app_image_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAppImageConfig", input, options)
  end

  @doc """
  Updates the specified Git repository with the specified values.
  """
  def update_code_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateCodeRepository", input, options)
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

  When Amazon SageMaker receives the request, it sets the endpoint status to
  `Updating`. After updating the endpoint, it sets the status to `InService`. To
  check the status of an endpoint, use the `DescribeEndpoint` API.

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

  When it receives the request, Amazon SageMaker sets the endpoint status to
  `Updating`. After updating the endpoint, it sets the status to `InService`. To
  check the status of an endpoint, use the `DescribeEndpoint` API.
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
  Updates the properties of a SageMaker image.

  To change the image's tags, use the `AddTags` and `DeleteTags` APIs.
  """
  def update_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateImage", input, options)
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

  Use `SourceIpConfig` to restrict worker access to tasks to a specific range of
  IP addresses. You specify allowed IP addresses by creating a list of up to ten
  [CIDRs](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html). By
  default, a workforce isn't restricted to specific IP addresses. If you specify a
  range of IP addresses, workers who attempt to access tasks using any IP address
  outside the specified range are denied and get a `Not Found` error message on
  the worker portal.

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