control "my-group-check" do
  impact 0.5
  title 'Check My Security Group.'

  describe aws_security_group(group_name: 'my-group') do
    it { should exist }
    its('vpc_id') { should cmp 'vpc-123456789' }
  end
  
end

control "my-sg-check" do
  impact 0.7
  title 'Ensure expected security groups all exist.'

  describe aws_security_groups.where( vpc_id: 'vpc-123456789') do
    its('group_ids') { should include('sg-11111111')}
    its('group_ids') { should include('sg-22222222')}
    its('group_ids') { should include('sg-33333333')}
  end

end
