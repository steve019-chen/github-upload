#Role for adding Dynatrace One agent pr Production
class role::rl_dynatrace_pr {
  include profile::pr_base
  class { 'profile::pr_dynatrace1agent': environment => 'pr-env', }
}
