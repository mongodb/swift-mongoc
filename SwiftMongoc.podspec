Pod::Spec.new do |spec|
  spec.name       = "libmongoc"
  spec.version    = "0.0.1"
  spec.summary    = "Swift bindings for libmongoc"
  spec.homepage   = "https://github.com/10gen/swift-mongoc"
  spec.license    = "Apache License 2.0"
  spec.author     = { "mbroadst" => "mbroadst@mongodb.com" }
  spec.platform   = :ios, "9.0"

  spec.source     = {
    :git => "ssh://git@github.com/10gen/swift-mongoc.git",
    :branch => "master"
  }

  spec.requires_arc = true

  spec.module_name = "libmongoc"
  spec.source_files = "libmongoc.h"
  spec.module_map = "module.modulemap"
  spec.preserve_paths = [ "module.modulemap", "libmongoc.h" ]

  spec.dependency "libbson", "> 0"
end
