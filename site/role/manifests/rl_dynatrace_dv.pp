#Role for adding Dynatrace One agent dv Development
class role::rl_dynatrace_dv {
  include profile::pr_base
  class { 'profile::pr_dynatrace1agent': environment => 'dv-env', }
}
