#
# Be sure to run `pod lib lint SYWechatOpenSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYWechatOpenSDK'
  s.version          = '1.7.9'
  s.summary          = '微信分享，支付SDK，支持打包成动态库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
1. 版本和微信官方提供的SDK版本保持一致
2. 在微信官方SDK包了一层，支持打包成动态库
                       DESC

  s.homepage         = 'https://github.com/isandboy/SYWechatOpenSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isandboy' => 'sandboylu@gmail.com' }
  s.source           = { :git => 'https://github.com/isandboy/SYWechatOpenSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.public_header_files = 'SYWechatOpenSDK/*.h'
  s.private_header_files = 'SYWechatOpenSDK/SYWechatOpenSDKDummp.h'
  s.source_files = 'SYWechatOpenSDK/*.{h,m}'
  s.vendored_libraries = 'SYWechatOpenSDK/libWeChatSDK.a'
  s.libraries = 'c++', 'sqlite3', 'z'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'Security', 'CoreTelephony', 'CFNetwork'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }

end
