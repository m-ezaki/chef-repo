require 'ohai'
oh = Ohai::System.new
oh.all_plugins

p oh["network"]["interfaces"]["vboxnet1"]["addresses"].select { |address, data| data["family"] == "inet" }[0]
