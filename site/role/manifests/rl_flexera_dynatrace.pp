# Combined Role for installing Flexera and Dynatrace One agent

class role::rl_flexera_dynatrace {
  include profile::pr_base
  include profile::pr_dynatrace1agent
  include profile::pr_flexera
}
