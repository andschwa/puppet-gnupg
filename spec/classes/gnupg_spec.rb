require 'spec_helper'

describe 'gnupg' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should include_class('homebrew')
    should contain_homebrew__formula('gnupg').with(
      :before => 'Package[boxen/brews/gnupg]'
    )
    should contain_package('boxen/brews/gnupg').with({
      :ensure => '1.4.16-boxen1'
    })
  end
end
