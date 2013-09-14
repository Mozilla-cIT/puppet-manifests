class { 'postgresql::server':
  config_hash => {
      'ip_mask_allow_all_users' => '0.0.0.0/0',
      'listen_addresses'        => '*',
      'manage_redhat_firewall'  => false,

      #'ip_mask_deny_postgres_user' => '0.0.0.0/32',
      #'postgres_password' => 'puppet',
  },
}



postgresql::db{ 'discourse_prod':
  user          => 'discourse_prod_user',
  password      => 'weNeedAPasswordHere',
  grant         => 'all',
}
