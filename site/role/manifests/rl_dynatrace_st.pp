#Role for adding Dynatrace One agent st
class role::rl_dynatrace_st {
  include profile::pr_base
  class { 'profile::pr_dynatrace1agent': environment => 'st-env', }
}
