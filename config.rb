###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout

page "index.html", :layout => :blank_template
page "/questions/*", :layout => :carers_template
page "/govuk-carers/*", :layout => :govuk_carers_template
page "/questions/help.html", :layout => :carers_help_template

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

#set :css_dir, 'stylesheets'
set :css_dir, '.'

set :js_dir, 'javascripts'

set :images_dir, 'images'


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
activate :relative_assets
set :relative_links, true

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

activate :directory_indexes

set :build_dir, "tmp"
