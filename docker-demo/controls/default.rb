# encoding: utf-8
# copyright: 2018, The Authors

describe docker_container(id: '123456789abcd') do
  it { should exist }
  it { should be_running }
  its('image') { should eq 'my-image' }
end
