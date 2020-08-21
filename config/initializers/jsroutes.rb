
JsRoutes.setup do |config|
  config.exclude = [
    /rails_/
  ]
  config.compact = true
  path = "app/javascript/packs"
  JsRoutes.generate!("#{path}/app_routes.js")
end
