#
#  Be sure to run `pod spec lint ZegoUIKitPrebuiltCall.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "GLMediator"
  spec.version      = "1.0.0"
  spec.summary      = "GLMediator iOS SDK"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = "ZegoPluginAdapter SDK for iOS by ZEGO."

  spec.homepage     = "https://www.zegocloud.com"
  spec.documentation_url = "https://docs.zegocloud.com"

  spec.license      = { :type => "Copyright", :text => "Copyright © 2022-2024 ZEGO. All Rights Reserved.\n" }


  spec.author             = { "ZEGOCLOUND" => "zego.im" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "", :tag => "#{spec.version.to_s}"}

  spec.source_files = "**/*.{swift}"

  spec.requires_arc = true
  spec.swift_versions = ['5.0']

end
