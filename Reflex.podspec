Pod::Spec.new do |spec|
    spec.name           = "Reflex"
    spec.version        = "1.0.0"
    spec.summary        = "The best way to reflect your Swift objects"

    spec.homepage       = "https://github.com/incetro/Reflex.git"
    spec.license        = 'MIT'
    spec.authors        = { "incetro" => "incetro@ya.ru" }
    spec.requires_arc   = true

    spec.ios.deployment_target     = "8.0"
    spec.osx.deployment_target     = "10.9"
    spec.watchos.deployment_target = "2.0"
    spec.tvos.deployment_target    = "9.0"

    spec.source                 = { git: "https://github.com/incetro/Reflex.git", tag: "#{spec.version}"}
    spec.source_files           = "Sources/Reflex/**/*.{h,swift}"
end