# Output value definitions

//Configuracion inicial
output "lambda_bucket_name" {
  description = "Name of the S3 bucket used to store function code."
  value = aws_s3_bucket.lambda_bucket.id
}

//Crear un valor de salida para el nombre de su función Lambda.
output "function_name" {
  description = "Name of the Lambda function."
  value = aws_lambda_function.hello_world.function_name
}

//Etapa API Gateway publicará su API en una URL administrada por AWS.
output "base_url" {
  description = "Base URL for API Gateway stage."
  value = aws_apigatewayv2_stage.lambda.invoke_url
}


