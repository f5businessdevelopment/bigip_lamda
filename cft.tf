resource "aws_cloudformation_stack" "scslamda" {
  name = "scslamda-stack"

  parameters = {
    ImageUri = "250871914685.dkr.ecr.us-east-1.amazonaws.com/lambda-nginx:latest"
  }

  capabilities  = ["CAPABILITY_AUTO_EXPAND", "CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"]
  template_body = file("${path.module}/cfn-nginx-lambda.yaml")

}

output "api_gateway" {
  value = aws_cloudformation_stack.scslamda.outputs.Url
}
