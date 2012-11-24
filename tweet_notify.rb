# -*- coding: utf-8 -*-
# tweet_notify : mikutter用ツイート通知プラグイン
# version 1.1(2012-11-24)
# 
# 詳細は、README.mdをご覧ください。


Plugin::create(:tweet_notify) do
  UserConfig[:tweet_notify_users] ||= []
  
  onboot do 
    UserConfig[:boot_time] = Time.now.to_s
  end
  
  onupdate do |service, messages|
    if UserConfig[:tweet_notify_bool] then
      notify_users = UserConfig[:tweet_notify_users].select{|usr| !usr.empty?}
      
      messages.each { |m|
      # メッセージのユーザーが一致し、リプライやメンションでもなく、起動後にツイートされたものであれば、通知します
      # core/addon/notify.rbのDIFINED_TIMEに依存しています
        if notify_users.index(m.idname) && !m.to_s.index("@") && (m[:created].to_s<=>UserConfig[:boot_time])>=0  then
          Plugin.call(:play_sound, UserConfig[:tweet_notify_sound]) if !UserConfig[:tweet_notify_sound].empty?
          Plugin.call(:popup_notify, User::findbyidname(m.message.user.idname),"update \"#{m.message}\"")
        end
      }
    end
  end
  
  settings "ポスト通知" do
    boolean "通知", :tweet_notify_bool
    fileselect("通知音", :tweet_notify_sound, "skin/data/sounds")
    multi "ユーザー", :tweet_notify_users
  end
  
end
