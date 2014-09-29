CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'xxx',                        # required
    :aws_secret_access_key  => 'yyy',                        # required
    :endpoint               => 'frozen-lake-5534.herokuapp.com' # optional, defaults to nil
  }
  config.fog_directory  = 'S3_BUCKET_NAME'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end