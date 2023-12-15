defmodule AWS.Examples.Textract do

  @doc"""
  Example of analyzing a document.
  REF: https://docs.aws.amazon.com/textract/latest/dg/text-location.html
  """
  def analyze_document do
    case AWS.Client.create("ACCESS_KEY", "SECRET_KEY", "REGION")
         |> AWS.Textract.analyze_document(%{
           "Document" => %{
             "Bytes" =>
               "/folder/file"
               |> File.read!()
               |> Base.encode64()
           },
           "FeatureTypes" => ["TABLES"]
         }) do
      {
        :ok,
        %{
          "AnalyzeDocumentModelVersion" => _,
          "Blocks" => blocks,
          "DocumentMetadata" => _
        } = _results,
        _response
      } ->
        # Process the results
        nil

      error ->
        error
    end
  end
end
