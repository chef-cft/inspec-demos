control 'azure-vm-test' do
  impact 1.0
  title 'Checks VM settings'
  desc 'Ensures proper settings on ARM VM.'

  describe azure_virtual_machine(name: 'my-host', group_name: 'my-resource-group') do
    its('os_type') { should eq 'Windows' }
    its('computer_name') {should eq 'my-host'}
    its('publisher') { should cmp 'MicrosoftWindowsServer' }
    its('sku') { should cmp '2016-Datacenter' }
    its('vm_size') { should eq 'Standard_DS1_v2' }
  end
end
