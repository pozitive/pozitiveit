CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: Figaro.env.carrierwave_aws_access_key_id!,
    aws_secret_access_key: Figaro.env.carrierwave_aws_secret_access_key!
  }
  config.fog_directory = Figaro.env.carrierwave_aws_s3_bucket!
end
