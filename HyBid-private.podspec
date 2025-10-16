Pod::Spec.new do |s|
  s.name             = 'HyBid-private'
  s.version          = '3.7.0-beta4-build.101'
  s.summary          = 'Private binary distribution of HyBid SDK'
  s.description      = 'Private binary distribution of HyBid including all compiled resources and dependencies.'
  s.homepage         = 'https://github.com/vervegroup/hybid-ios-sdk-private-pods'
  s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author           = { 'Verve Group' => 'hybid@verve.com' }
  s.platform         = :ios, '12.0'

  # Git-based source (tag already contains HyBid.xcframework.zip)
  s.source           = { :git => 'https://github.com/vervegroup/hybid-ios-sdk-private-pods.git', :tag => s.version.to_s }

  # Frameworks contained in the repo/tag
  s.vendored_frameworks = 'HyBid.xcframework', 'OMSDK_Pubnativenet.xcframework'

  # Resources (storyboards, xibs, and localizations)
  s.resources = [
    'HyBid.xcframework/**/*.storyboardc',
    'HyBid.xcframework/**/*.xib',
    'HyBid.xcframework/**/*.lproj'
  ]

  s.requires_arc = true
end
