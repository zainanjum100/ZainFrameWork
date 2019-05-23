#
# Be sure to run `pod lib lint ZainFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZainFramework'
  s.version          = '0.1.1'
  s.summary          = 'This Repo is going to help Developers in IOS development'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This Repo is going to help Developers in IOS development and it's short and descriptive this will be fun.
                       DESC

  s.homepage         = 'https://github.com/zainanjum100/ZainFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zainanjum100' => 'zainanjum100@gmail.com' }
  s.source           = { :git => 'https://github.com/zainanjum100/ZainFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'ZainFramework/Classes/**/*'
  s.swift_versions = '5.0'
  # s.resource_bundles = {
  #   'ZainFramework' => ['ZainFramework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
