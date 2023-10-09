# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://suncityaviation.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  #Static Pages
  add '/stratus-finance'
  add '/tos'
  add '/pilot_courses'
  add '/ppc'
  add '/wingman'
  add '/ipc'
  add '/bfr'
  add '/seaplane'
  add '/atp'
  add '/cfi'
  add '/private_pilot'
  add '/instrument'
  add '/commercial'
  add '/multi'
  add '/why_pilot'
  add '/pilot_training_guide'
  add '/planes'
  add '/about'
  #add '/quiz_confirmation'
  add '/quiz'
  #add '/checkout_sun_city_confirmation'
  add '/checkout_sun_city'
  #add '/discovery_confirmation'
  add '/discovery-flight'
  #add '/book_download_confirmation'
  #add '/contact_confirmation'
  add '/contact'
  #add '/camp_confirmation'
  add '/youth'
  #add '/enroll_confirmation'
  add '/enroll'


end
