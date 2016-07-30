class S3Uploader < AwsParent
  def initialize
    super
    @s3 = Aws::S3::Resource.new
    @uploader = @s3.bucket(ENV['UPLOAD_BUCKET'])
  end

  def call(title_team_player_path, input_path)
    ttp_file_name = "title_team_player-#{Time.now.to_i}.csv"
    inputs_file_name = "inputs-#{Time.now.to_i}.csv"
    @uploader.object(ttp_file_name).upload_file(title_team_player_path)
    @uploader.object(inputs_file_name).upload_file(input_path)
    root = "https://s3.amazonaws.com/#{ENV['UPLOAD_BUCKET']}/"

    return root + ttp_file_name, root + inputs_file_name
  end
end
