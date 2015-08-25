namespace :cron do
  desc "Send weekly trending repos emails"
  task weekly_trending: :environment do
    puts "sending trending repos email" 
    newsletters = Newsletter.all
    newsletters.each do |n|
      n.users.each do |u|
        TrendingMailer.trending_email(n, u).deliver_now
      end
    end
  end
end
