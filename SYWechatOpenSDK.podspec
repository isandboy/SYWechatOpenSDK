#
# Be sure to run `pod lib lint SYWechatOpenSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYWechatOpenSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SYWechatOpenSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/isandboy/SYWechatOpenSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isandboy' => 'sandboylu@gmail.com' }
  s.source           = { :git => 'https://github.com/isandboy/SYWechatOpenSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.public_header_files = 'SYWechatOpenSDK/*.h'
  s.private_header_files = 'SYWechatOpenSDK/SYWechatOpenSDKDummp.h'
  s.source_files = 'SYWechatOpenSDK/*.{h,m}'
  s.vendored_libraries = 'SYWechatOpenSDK/libWeChatSDK.a'
  s.libraries = 'c++', 'sqlite3', 'z'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }


end
