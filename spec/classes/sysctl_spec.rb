require 'spec_helper'

describe 'sysctl' do
  it do
    should contain_file('/etc/sysctl.conf').with({
      :group   => 'wheel',
      :owner   => 'root',
      :replace => false,
      :source  => 'puppet:///modules/sysctl/sysctl.conf'
    })
  end
end
