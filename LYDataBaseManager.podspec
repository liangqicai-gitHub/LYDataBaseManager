#
# Be sure to run `pod lib lint LYDataBaseManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LYDataBaseManager'
  s.version          = '0.1.2'
  s.summary          = 'It is use for manage local database base on RealmSwift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
It is use for manage local database base on RealmSwift.
Welcome to use ~
                       DESC

  s.homepage         = 'https://github.com/liangqicai-gitHub/LYDataBaseManager.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sunny' => '2468751795@qq.com' }
  s.source           = { :git => 'https://github.com/liangqicai-gitHub/LYDataBaseManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LYDataBaseManager/Classes/**/*'
  s.swift_versions = ['5.0']
  
  # s.resource_bundles = {
  #   'LYDataBaseManager' => ['LYDataBaseManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'RealmSwift', '10.29.0'
end
