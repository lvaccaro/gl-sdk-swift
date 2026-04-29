Pod::Spec.new do |spec|
    spec.name                   = "glsdkFFI"
    spec.version                = "e60065b"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Low-level bindings to the Greenlight API"
    spec.homepage               = "https://blockstream.com"
    spec.authors                = { "Christian Decker" => "decker@blockstream.com" }
    spec.documentation_url      = "https://docs.rs/glsdk"
    spec.source                 = { :http => "https://github.com/lvaccaro/gl-sdk-swift/releases/download/e60065b/glsdkFFI.xcframework.zip" }
    spec.ios.deployment_target  = "13.0"
    spec.vendored_frameworks    = "glsdkFFI.xcframework"
  end
