class NoticeMailer < ApplicationMailer

  def sendmail_confirm(blog, entry, comment)
    @blog = blog
    @entry = entry
    @comment = comment

    mail to: 'admin@example.com', subject: '新しいコメントが投稿されました'
  end
end
