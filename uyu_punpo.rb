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

	command(:uyu_punpo_postbox,
		name: '(´･ェ･｀)ぅゅぷんぽすとぼっくす',
		condition: lambda{ |opt| true },
		visible: true,
		role: :postbox) do |opt|
			text = Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text
		    Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text = "(´･ェ･｀)「あ、もしもし#{text}さん？ぅゅだけど…うん、そうぷんぽぷんぽ」"
		end

end

