#Role for adding Dynatrace One agent
class role::rl_dynatrace {
  include profile::pr_base
  include profile::pr_dynatrace1agent
}
