SitemapGenerator::Sitemap.default_host = "https://suncityaviation.com"


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

SitemapGenerator::Sitemap.create do
  add '/blog'
  add '/youth-aviation-programs'
  add '/contact'
  add '/discovery-flight'
  add '/visit-sun-city'
  add '/quiz'
  add '/about'
  add '/planes'
  add '/pilot-training-guide'
  add '/why-become-a-pilot'
  add '/multi-engine-rating'
  add '/commercial-pilot-training'
  add '/instrument-rating'
  add '/private-pilot-training'
  add '/certified-flight-instructor-cfi'
  add '/airline-transport-pilot-atp'
  add '/seaplane-pilot-training'
  add '/flight-review-bfr'
  add '/instrument-proficiency-check-ipc'
  add '/wingman-family-member-training'
  add '/professional-pilot-course'
  add '/flight-training-pilot-programs'
  add '/terms-of-service-privacy-policy'
  add '/stratus-finance'

  # Previous Site's Routes
  add '/aerocamp'
  add '/fleet'
  add '/student-resources'
  add '/contact-us'
  add '/private-course'
  add '/flight-reviews'
  add '/multiengine-course'
  add '/commercial-course'
  add '/discovery-flights'
  add '/frequently-asked-questions'
  add '/flight-instructor-courses'
  add '/flight-instrument-instructor'
  add '/instrument-proficiency-check-ipc'
  add '/airline-transport-pilot-license'

  # Locations dynamic routes
  add '/pilot-training/pompano-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/fort-lauderdale-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/west-palm-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/boca-raton-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/delray-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/deerfield-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/boynton-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/hollywood-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/fort-lauderdale-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/pembroke-pines-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/miramar-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/davie-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/hialeah-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/miami-gardens-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/miami-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/sunrise-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/plantation-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/aventura-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/weston-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/lauderhill-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/tamarac-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/cooper-city-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/dania-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/north-miami-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/north-miami-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/hallandale-beach-florida-flight-school', changefreq: 'weekly'
  add '/pilot-training/oakland-park-florida-flight-school', changefreq: 'weekly'


end
