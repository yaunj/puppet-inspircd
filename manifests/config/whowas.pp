class inspircd::config::whowas (
  $groupsize = $inspircd::params::groupsize,
  $maxgroups = $inspircd::params::maxgroups,
  $maxkeep = $inspircd::params::maxkeep,
) inherits inspircd::params {


  $config = {
    groupsize => $groupsize,
    maxgroups => $maxgroups,
    maxkeep   => $maxkeep
  }

  ::inspircd::internal::configblock { "inspircd whowas ":
    config_name => "whowas",
    config      => $config,
    order       => 17
  }


}
