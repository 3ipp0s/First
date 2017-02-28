# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( customize.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( fonts.scss )

Rails.application.config.assets.precompile += %w( alert.js )
Rails.application.config.assets.precompile += %w( jquery.sequence-min.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox.pack.js )
Rails.application.config.assets.precompile += %w( jquery.scrollUp.min.js )
Rails.application.config.assets.precompile += %w( jquery.smoothscroll.min.js )
Rails.application.config.assets.precompile += %w( jquery.meanmenu.min.js )
Rails.application.config.assets.precompile += %w( pace.min.js )
Rails.application.config.assets.precompile += %w( jquery.flexslider-min.js )
Rails.application.config.assets.precompile += %w( custom.js )