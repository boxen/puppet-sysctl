require 'spec_helper'

describe 'sysctl::ipforwarding' do
  it do
    should contain_sysctl__set('net.inet.ip.forwarding').with({
      :value => 1
    })
  end
end
