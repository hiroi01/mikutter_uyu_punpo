#-*- coding: utf-8 -*-

Plugin.create :uyu_punpo do

	command(:uyu_punpo,
		name: '(´･ェ･｀)ぅゅぷんぽ',
		condition: lambda{ |opt| true },
		visible: true,
		role: :timeline) do |opt|
			opt.messages.each { |m|
				Service.primary.post(:message=>"@#{m.user[:idname]} (´･ェ･｀)「あ、もしもし#{m.user[:name]}さん？ぅゅだけど…うん、そうぷんぽぷんぽ」",:replyto=>m)
			}
	end

end

