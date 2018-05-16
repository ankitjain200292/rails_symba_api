ROOTERY = YAML.load_file("#{Rails.root.to_s}/config/rootery.yml")
# if File.exists?("#{File.expand_path('..', Dir.pwd)}/web_app_tokens.json")
# 	WEB_APP_TOKENS = JSON.parse(File.read("#{File.expand_path('..', Dir.pwd)}/web_app_tokens.json"))
# 	WEB_APP_TOKENS.uniq!	
# else
# 	WEB_APP_TOKENS = []
# end