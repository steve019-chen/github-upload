require 'spec_helper'

describe 'profile::pr_perform_upgrade' do
  let(:title) { 'pr_perform_upgrade' }
  let(:node) { 'test.example.com' }
  let(:facts) do
    {
      'os' => {
        'family' => 'RedHat',
        'release' => {
          'major' => '5',
          'minor' => '3',
          'full' => '5.3',
        },
      },
      'patrol_info' => {
        'var_tmp_bytes' => 310200001,
        'var_tmp_fs' => '/var/tmp',
        },
        'perform_info' => {
          'installed' => 'false',
          'var_tmp_fs' => '/var/tmp',
          },
    }
  end

  it { is_expected.to compile.with_all_deps }
 # it { is_expected.to contain_file('var/tmp/TSCO-perform-linux-legacy') }

end
