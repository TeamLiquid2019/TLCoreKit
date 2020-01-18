#
# Be sure to run `pod lib lint TLCoreKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TLCoreKit'
  s.version          = '0.1.1'
  s.summary          = 'TLCoreKit 核心业务组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TLCoreKit 核心业务组件库
                       DESC

  s.homepage         = 'https://github.com/TeamLiquid2019/TLCoreKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TeamLiquid2019' => 'liquid@teamliquid.com' }
  s.source           = { :git => 'https://github.com/TeamLiquid2019/TLCoreKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'TLCoreKit/Classes/**/*'
  s.source_files = 'TLCoreKit/Classes/*'
  
  s.public_header_files = 'TLCoreKit/Classes/TLCoreHeader.h'
  
  #-----------------文件分级-------------------#
  
  s.subspec 'User' do |ss|
    ss.source_files = 'TLCoreKit/Classes/User/*.{h,m}'
    ss.subspec 'Model' do |sss|
      sss.source_files = 'TLCoreKit/Classes/User/Model/*.{h,m}'
    end
  end
  
  s.subspec 'Macro' do |ss|
    ss.source_files = 'TLCoreKit/Classes/Macro/*.{h,m}'
  end
  
  s.subspec 'UIBase' do |ss|
    ss.source_files = 'TLCoreKit/Classes/UIBase/*.{h,m}'
  end
  
  s.subspec 'TLCoreKitThirdparty' do |ss|
    ss.source_files = 'TLCoreKit/Classes/TLCoreKitThirdparty/*.{h,m}'
  end
  
  s.subspec 'Widget' do |ss|
    ss.source_files = 'TLCoreKit/Classes/Widget/*.{h,m}'
  end
  
  #-----------------文件分级结束----------------#
  
  # s.resource_bundles = {
  #   'TLCoreKit' => ['TLCoreKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  
  s.dependency 'YYKit'
  s.dependency 'CocoaLumberjack'
  s.dependency 'IQKeyboardManager'
  s.dependency 'Masonry'
  s.dependency 'MBProgressHUD'
  s.dependency 'MJRefresh'
  s.dependency 'TLFoundation'
  
end
