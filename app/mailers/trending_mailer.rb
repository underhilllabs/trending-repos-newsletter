class TrendingMailer < ApplicationMailer
  def trending_email(newsletter, user)
    @newsletter = newsletter
    @user = user 
    newsletter_items = @newsletter.newsletter_items
    @item = newsletter_items.first
    @repos = Github::Trending.get(@item.repo_language, @item.period)
    # set default language for newsletter title if it isn't set
    @item.repo_language ||= "All Languages"

    mail(to: @user.email, subject: "#{@item.repo_language.capitalize} Trending Repos")
  end
end
