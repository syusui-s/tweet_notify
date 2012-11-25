# -*- coding: utf-8 -*-
# tweet_notify : mikutter用ツイート通知プラグイン
# version 1.2.1(2012-11-25 13:36 +0900)
# 
# mikutter version 0.2.1.1066 core/plugin/notify.rbの一部を翻案しています。
# 詳細は、README.mdをご覧ください。


Plugin::create(:tweet_notify) do
  UserConfig[:tweet_notify_users] ||= []
  
  settings "ポスト通知" do
    boolean "通知", :tweet_notify_bool
    fileselect("通知音", :tweet_notify_sound, DEFAULT_SOUND_DIRECTORY)
    multi "ユーザー", :tweet_notify_users
  end
  
  onupdate do |service, messages|
    if UserConfig[:tweet_notify_bool] then
      notify_users = UserConfig[:tweet_notify_users].select{|usr| not(usr.empty?)}
      # メッセージのユーザーが一致し、リプライやメンションでもなく、起動後にツイートされたものであれば、通知します
      messages = Plugin.filtering(:show_filter, messages.select{|m| notify_users.index(m.idname) and m.receiver.nil? and m[:created] > DEFINED_TIME}).first
      
      if not(messages.empty?) then
        messages.each{|m|
          Plugin.call(:play_sound, UserConfig[:tweet_notify_sound]) if not(UserConfig[:tweet_notify_sound].empty?)
          Plugin.call(:popup_notify, User::findbyidname(m.idname),"update \"#{m.message}\"")
        }
      end
    end
  end
end
