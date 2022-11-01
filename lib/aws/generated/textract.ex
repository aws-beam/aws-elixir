# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Textract do
  @moduledoc """
  Amazon Textract detects and analyzes text in documents and converts it into
  machine-readable text.

  This is the API reference documentation for Amazon Textract.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-06-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "textract",
      global?: false,
      protocol: "json",
      service_id: "Textract",
      signature_version: "v4",
      signing_name: "textract",
      target_prefix: "Textract"
    }
  end

  @doc """
  Analyzes an input document for relationships between detected items.

  The types of information returned are as follows:

    * Form data (key-value pairs). The related information is returned
  in two `Block` objects, each of type `KEY_VALUE_SET`: a KEY `Block` object and a
  VALUE `Block` object. For example, *Name: Ana Silva Carolina* contains a key and
  value. *Name:* is the key. *Ana Silva Carolina* is the value.

    * Table and table cell data. A TABLE `Block` object contains
  information about a detected table. A CELL `Block` object is returned for each
  cell in a table.

    * Lines and words of text. A LINE `Block` object contains one or
  more WORD `Block` objects. All lines and words that are detected in the document
  are returned (including text that doesn't have a relationship with the value of
  `FeatureTypes`).

    * Query. A QUERY Block object contains the query text, alias and
  link to the associated Query results block object.

    * Query Result. A QUERY_RESULT Block object contains the answer to
  the query and an ID that connects it to the query asked. This Block also
  contains a confidence score.

  Selection elements such as check boxes and option buttons (radio buttons) can be
  detected in form data and in tables. A SELECTION_ELEMENT `Block` object contains
  information about a selection element, including the selection status.

  You can choose which type of analysis to perform by specifying the
  `FeatureTypes` list.

  The output is returned in a list of `Block` objects.

  `AnalyzeDocument` is a synchronous operation. To analyze documents
  asynchronously, use `StartDocumentAnalysis`.

  For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
  """
  def analyze_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AnalyzeDocument", input, options)
  end

  @doc """
  `AnalyzeExpense` synchronously analyzes an input document for financially
  related relationships between text.

  Information is returned as `ExpenseDocuments` and seperated as follows:

    * `LineItemGroups`- A data set containing `LineItems` which store
  information about the lines of text, such as an item purchased and its price on
  a receipt.

    * `SummaryFields`- Contains all other information a receipt, such as
  header information or the vendors name.
  """
  def analyze_expense(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AnalyzeExpense", input, options)
  end

  @doc """
  Analyzes identity documents for relevant information.

  This information is extracted and returned as `IdentityDocumentFields`, which
  records both the normalized field and value of the extracted text.Unlike other
  Amazon Textract operations, `AnalyzeID` doesn't return any Geometry data.
  """
  def analyze_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AnalyzeID", input, options)
  end

  @doc """
  Detects text in the input document.

  Amazon Textract can detect lines of text and the words that make up a line of
  text. The input document must be in one of the following image formats: JPEG,
  PNG, PDF, or TIFF. `DetectDocumentText` returns the detected text in an array of
  `Block` objects.

  Each document page has as an associated `Block` of type PAGE. Each PAGE `Block`
  object is the parent of LINE `Block` objects that represent the lines of
  detected text on a page. A LINE `Block` object is a parent for each word that
  makes up the line. Words are represented by `Block` objects of type WORD.

  `DetectDocumentText` is a synchronous operation. To analyze documents
  asynchronously, use `StartDocumentTextDetection`.

  For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
  """
  def detect_document_text(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectDocumentText", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  text in a document.

  You start asynchronous text analysis by calling `StartDocumentAnalysis`, which
  returns a job identifier (`JobId`). When the text analysis operation finishes,
  Amazon Textract publishes a completion status to the Amazon Simple Notification
  Service (Amazon SNS) topic that's registered in the initial call to
  `StartDocumentAnalysis`. To get the results of the text-detection operation,
  first check that the status value published to the Amazon SNS topic is
  `SUCCEEDED`. If so, call `GetDocumentAnalysis`, and pass the job identifier
  (`JobId`) from the initial call to `StartDocumentAnalysis`.

  `GetDocumentAnalysis` returns an array of `Block` objects. The following types
  of information are returned:

    * Form data (key-value pairs). The related information is returned
  in two `Block` objects, each of type `KEY_VALUE_SET`: a KEY `Block` object and a
  VALUE `Block` object. For example, *Name: Ana Silva Carolina* contains a key and
  value. *Name:* is the key. *Ana Silva Carolina* is the value.

    * Table and table cell data. A TABLE `Block` object contains
  information about a detected table. A CELL `Block` object is returned for each
  cell in a table.

    * Lines and words of text. A LINE `Block` object contains one or
  more WORD `Block` objects. All lines and words that are detected in the document
  are returned (including text that doesn't have a relationship with the value of
  the `StartDocumentAnalysis` `FeatureTypes` input parameter).

    * Query. A QUERY Block object contains the query text, alias and
  link to the associated Query results block object.

    * Query Results. A QUERY_RESULT Block object contains the answer to
  the query and an ID that connects it to the query asked. This Block also
  contains a confidence score.

  While processing a document with queries, look out for
  `INVALID_REQUEST_PARAMETERS` output. This indicates that either the per page
  query limit has been exceeded or that the operation is trying to query a page in
  the document which doesn’t exist.

  Selection elements such as check boxes and option buttons (radio buttons) can be
  detected in form data and in tables. A SELECTION_ELEMENT `Block` object contains
  information about a selection element, including the selection status.

  Use the `MaxResults` parameter to limit the number of blocks that are returned.
  If there are more results than specified in `MaxResults`, the value of
  `NextToken` in the operation response contains a pagination token for getting
  the next set of results. To get the next page of results, call
  `GetDocumentAnalysis`, and populate the `NextToken` request parameter with the
  token value that's returned from the previous call to `GetDocumentAnalysis`.

  For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
  """
  def get_document_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDocumentAnalysis", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that detects text
  in a document.

  Amazon Textract can detect lines of text and the words that make up a line of
  text.

  You start asynchronous text detection by calling `StartDocumentTextDetection`,
  which returns a job identifier (`JobId`). When the text detection operation
  finishes, Amazon Textract publishes a completion status to the Amazon Simple
  Notification Service (Amazon SNS) topic that's registered in the initial call to
  `StartDocumentTextDetection`. To get the results of the text-detection
  operation, first check that the status value published to the Amazon SNS topic
  is `SUCCEEDED`. If so, call `GetDocumentTextDetection`, and pass the job
  identifier (`JobId`) from the initial call to `StartDocumentTextDetection`.

  `GetDocumentTextDetection` returns an array of `Block` objects.

  Each document page has as an associated `Block` of type PAGE. Each PAGE `Block`
  object is the parent of LINE `Block` objects that represent the lines of
  detected text on a page. A LINE `Block` object is a parent for each word that
  makes up the line. Words are represented by `Block` objects of type WORD.

  Use the MaxResults parameter to limit the number of blocks that are returned. If
  there are more results than specified in `MaxResults`, the value of `NextToken`
  in the operation response contains a pagination token for getting the next set
  of results. To get the next page of results, call `GetDocumentTextDetection`,
  and populate the `NextToken` request parameter with the token value that's
  returned from the previous call to `GetDocumentTextDetection`.

  For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
  """
  def get_document_text_detection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDocumentTextDetection", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  invoices and receipts.

  Amazon Textract finds contact information, items purchased, and vendor name,
  from input invoices and receipts.

  You start asynchronous invoice/receipt analysis by calling
  `StartExpenseAnalysis`, which returns a job identifier (`JobId`). Upon
  completion of the invoice/receipt analysis, Amazon Textract publishes the
  completion status to the Amazon Simple Notification Service (Amazon SNS) topic.
  This topic must be registered in the initial call to `StartExpenseAnalysis`. To
  get the results of the invoice/receipt analysis operation, first ensure that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  `GetExpenseAnalysis`, and pass the job identifier (`JobId`) from the initial
  call to `StartExpenseAnalysis`.

  Use the MaxResults parameter to limit the number of blocks that are returned. If
  there are more results than specified in `MaxResults`, the value of `NextToken`
  in the operation response contains a pagination token for getting the next set
  of results. To get the next page of results, call `GetExpenseAnalysis`, and
  populate the `NextToken` request parameter with the token value that's returned
  from the previous call to `GetExpenseAnalysis`.

  For more information, see [Analyzing Invoices and Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html).
  """
  def get_expense_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExpenseAnalysis", input, options)
  end

  @doc """
  Starts the asynchronous analysis of an input document for relationships between
  detected items such as key-value pairs, tables, and selection elements.

  `StartDocumentAnalysis` can analyze text in documents that are in JPEG, PNG,
  TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use
  `DocumentLocation` to specify the bucket name and file name of the document.

  `StartDocumentAnalysis` returns a job identifier (`JobId`) that you use to get
  the results of the operation. When text analysis is finished, Amazon Textract
  publishes a completion status to the Amazon Simple Notification Service (Amazon
  SNS) topic that you specify in `NotificationChannel`. To get the results of the
  text analysis operation, first check that the status value published to the
  Amazon SNS topic is `SUCCEEDED`. If so, call `GetDocumentAnalysis`, and pass the
  job identifier (`JobId`) from the initial call to `StartDocumentAnalysis`.

  For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
  """
  def start_document_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDocumentAnalysis", input, options)
  end

  @doc """
  Starts the asynchronous detection of text in a document.

  Amazon Textract can detect lines of text and the words that make up a line of
  text.

  `StartDocumentTextDetection` can analyze text in documents that are in JPEG,
  PNG, TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use
  `DocumentLocation` to specify the bucket name and file name of the document.

  `StartTextDetection` returns a job identifier (`JobId`) that you use to get the
  results of the operation. When text detection is finished, Amazon Textract
  publishes a completion status to the Amazon Simple Notification Service (Amazon
  SNS) topic that you specify in `NotificationChannel`. To get the results of the
  text detection operation, first check that the status value published to the
  Amazon SNS topic is `SUCCEEDED`. If so, call `GetDocumentTextDetection`, and
  pass the job identifier (`JobId`) from the initial call to
  `StartDocumentTextDetection`.

  For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
  """
  def start_document_text_detection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDocumentTextDetection", input, options)
  end

  @doc """
  Starts the asynchronous analysis of invoices or receipts for data like contact
  information, items purchased, and vendor names.

  `StartExpenseAnalysis` can analyze text in documents that are in JPEG, PNG, and
  PDF format. The documents must be stored in an Amazon S3 bucket. Use the
  `DocumentLocation` parameter to specify the name of your S3 bucket and the name
  of the document in that bucket.

  `StartExpenseAnalysis` returns a job identifier (`JobId`) that you will provide
  to `GetExpenseAnalysis` to retrieve the results of the operation. When the
  analysis of the input invoices/receipts is finished, Amazon Textract publishes a
  completion status to the Amazon Simple Notification Service (Amazon SNS) topic
  that you provide to the `NotificationChannel`. To obtain the results of the
  invoice and receipt analysis operation, ensure that the status value published
  to the Amazon SNS topic is `SUCCEEDED`. If so, call `GetExpenseAnalysis`, and
  pass the job identifier (`JobId`) that was returned by your call to
  `StartExpenseAnalysis`.

  For more information, see [Analyzing Invoices and Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html).
  """
  def start_expense_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExpenseAnalysis", input, options)
  end
end
