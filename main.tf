module "table_courses" {
  source  = "./modules/dynabodb"
  context = module.label.context
  name    = "courses"
}

module "table_authors" {
  source  = "./modules/dynabodb"
  context = module.label.context
  name    = "authors "
}


module "lambda_functions" {
  source                                 = "./modules/lambda"
  context                                = module.label.context
  courses_table                          = module.table_courses.table_name
  authors_table                          = module.table_authors.table_name
  authors_table_arn                      = module.table_authors.table_arn
  courses_table_arn                      = module.table_courses.table_arn
  aws_api_gateway_rest_api_execution_arn = aws_api_gateway_rest_api.this.execution_arn
}

