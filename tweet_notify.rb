# -*- coding: utf-8 -*-
# tweet_notify : mikutter用ツイート通知プラグイン
# version 1.2(2012-11-25 12:40 +0900)
# 
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
      notify_users = UserConfig[:tweet_notify_users].select{|usr| !usr.empty?}
      # メッセージのユーザーが一致し、リプライやメンションでもなく、起動後にツイートされたものであれば、通知します
      messages = Plugin.filtering(:show_filter, messages.select{|m| notify_users.index(m.idname) and m.receiver.nil? and m[:created] > DEFINED_TIME}).first
      
      if !messages.empty? then
        Plugin.call(:play_sound, UserConfig[:tweet_notify_sound]) if !UserConfig[:tweet_notify_sound].empty?
        Plugin.call(:popup_notify, User::findbyidname(m.message.user.idname),"update \"#{m.message}\"")
      end
    end
  end
end
