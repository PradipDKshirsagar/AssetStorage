Aws.config.update({
   credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
})

S3_Resource = Aws::S3::Resource.new(region: ENV['AWS_REGION'])
