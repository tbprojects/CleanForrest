if Comfy::Cms::Site.count.zero?
  `rails db < db/seeds/comfy_start.sql`
  puts '** Initial Comfy records loaded'
end
