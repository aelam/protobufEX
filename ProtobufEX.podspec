#
# Be sure to run `pod lib lint ProtobufEX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProtobufEX'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ProtobufEX.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/ProtobufEX'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ryan Wang' => 'wanglun02@gmail.com' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/ProtobufEX.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ProtobufEX/Classes/**/*'
  s.dependency 'Protobuf', '~> 3.1.0'
  s.pod_target_xcconfig  = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1' }

end
