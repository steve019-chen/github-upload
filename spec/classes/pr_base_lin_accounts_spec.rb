require 'spec_helper'

describe 'profile::pr_base_lin_accounts' do
  let(:title) { 'pr_base_lin_accounts' }
  let(:node) { 'test.example.com' }
  let(:facts) do
    {
      'os' => {
        'family' => 'RedHat',
        'release' => {
          'major' => '7',
          'minor' => '7',
          'full' => '7.7',
        },
      },
      'telus_user_group_sss' => '1',
      'telus_user_group_central' => '1',
      'telus_user_group_ldap' => '0',
      'telus_user_group_winbind' => '0',
    }
  end

  it { is_expected.to compile.with_all_deps }
  it { is_expected.to contain_user('unixt4') }
  it { is_expected.to contain_user('svcscan') }
  it { is_expected.to contain_group('remotelogin') }

  context 'with telus_user_group_winbind => 1' do
    let(:facts) do
      super().merge('telus_user_group_winbind' => '1')
    end

    it { is_expected.to compile.with_all_deps }
    it { is_expected.to contain_user('unixt4') }
    it { is_expected.to contain_user('svcscan') }
    it { is_expected.not_to contain_group('remotelogin') }
  end
end
