module RefineryCore
  class Engine < ::Rails::Engine
    # Ensure models load properly
    config.to_prepare do
      Dir.glob(Rails.root.join("app/models/**/*.rb")).each do |c|
        require_dependency c
      end
    end

    # Allow migrations to be shared with other apps
    initializer :append_migrations do |app|
      unless app.root.to_s.match? root.to_s
        config.paths["db/migrate"].expanded.each do |path|
          app.config.paths["db/migrate"] << path
        end
      end
    end
  end
end
