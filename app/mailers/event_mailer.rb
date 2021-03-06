class EventMailer < ActionMailer::Base
  default from: ENV["DEFAULT_MAIL_FROM"]

  add_template_helper ApplicationHelper
  add_template_helper EventsHelper

  def event_is_today_reminder(user, event)
    @event = event
    @user = user
    mail to: user.email,
         subject: "#{@event.name} is today!"
  end
end
