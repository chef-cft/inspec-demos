control "public-bucket-check" do
  impact 0.5
  title 'Check My public S3 bucket'


  describe aws_s3_bucket(bucket_name: 'my-public-bucket') do
    it { should exist }
    it { should be_public }
    its('region') { should eq 'us-west-2' }
  end
end

control "private-bucket-check" do
  impact 0.5
  title 'Check My private S3 bucket'


  describe aws_s3_bucket(bucket_name: 'my-private-bucket') do
    it { should exist }
    it { should_not be_public }
    its('region') { should eq 'us-west-2' }
  end
end
