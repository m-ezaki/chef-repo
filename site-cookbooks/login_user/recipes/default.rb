data = data_bag('users')


data.each do |id|

 u = data_bag_item('users',id)
 
 group u['group'] do
  gid u['gid']
  group_name u['group']
  action [:create]
 end

 user u['username'] do
  uid u['uid']
  group u['group']
  password u['password']
  home u['home']
  shell u['shell']
  supports :manage_home => true
  action [:create, :manage]
 end

end 
