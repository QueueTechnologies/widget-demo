set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'
set :fonts_dir,  'fonts'

activate :directory_indexes

activate :deploy do |deploy|
  deploy.method       = :git
  deploy.remote       = 'origin'
  deploy.branch       = 'gh-pages'
  deploy.strategy     = :force_push
  deploy.build_before = true
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
