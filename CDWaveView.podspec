#
# Be sure to run `pod lib lint CDWaveView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDWaveView'
  s.version          = '0.1.0'
  s.summary          = '水波纹'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
水波纹, 多条水波纹 不同的波动速度, 即可实现效果
                       DESC

  s.homepage         = 'https://github.com/513433750@qq.com/CDWaveView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'
  s.author           = { 'Haven' => '513433750@qq.com' }
  s.source           = { :git => 'https://github.com/HavenWWH/CDWaveView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CDWaveView/*.{h,m}'
  
  # s.resource_bundles = {
  #   'CDWaveView' => ['CDWaveView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
