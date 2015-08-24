class TrendingMailer < ApplicationMailer
  def trending_email(newsletter, user)
    @newsletter = newsletter
    @user = user 
    newsletter_items = @newsletter.newsletter_items
    item = newsletter_items.first
    @repos = Github::Trending.get(item.repo_language, item.period)

    mail(to: @user.email, subject: 'Github Weekly Trends')
  end
end
