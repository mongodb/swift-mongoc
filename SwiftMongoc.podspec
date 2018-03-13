Pod::Spec.new do |spec|
  spec.name             = "libmongoc"
  spec.version          = "0.0.1"
  spec.summary          = "Swift bindings for libmongoc"
  spec.homepage         = "https://github.com/10gen/swift-mongoc"
  spec.license          = "Apache License 2.0"
  spec.author           = { "mbroadst" => "mbroadst@mongodb.com" }
  spec.source           = { :git => "ssh://git@github.com/10gen/swift-bson.git", :branch => "master" }

  spec.osx.deployment_target = '10.9'
  spec.swift_version = '4.0'
  spec.requires_arc = true

  spec.module_name = "libmongoc"
  spec.preserve_path = "module.modulemap"
  spec.module_map = "module.modulemap"

  spec.dependency "libbson", "> 0"
end
