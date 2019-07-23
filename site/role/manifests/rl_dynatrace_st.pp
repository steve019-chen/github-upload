#Role for adding Dynatrace One agent st Staging environment
class role::rl_dynatrace_st {
  include profile::pr_base
  class { 'profile::pr_dynatrace1agent': environment => 'st-env', }
}
