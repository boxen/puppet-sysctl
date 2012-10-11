require 'spec_helper'

describe 'sysctl::set' do
  let(:title) { 'foobar' }
  let(:params) do
    {
      'value' => 'barbaz'
    }
  end

  it do
    should include_class('sysctl')

    should contain_exec('set-foobar-sysctl').with({
      :command => 'sysctl -w foobar=barbaz',
      :unless  => 'sysctl foobar | grep barbaz',
      :user    => 'root'
    })

    should contain_file_line('/etc/sysctl.conf foobar=barbaz').with({
      :line    => 'foobar=barbaz',
      :path    => '/etc/sysctl.conf',
      :require => 'File[/etc/sysctl.conf]'
    })
  end
end
