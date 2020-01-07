Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'TODO: 填写组件 ${POD_NAME} 的简单描述。'
  s.description      = <<-DESC
TODO: 填写组件 ${POD_NAME} 的详细功能描述、使用方法、注意事项等必要信息。
                       DESC

  s.homepage         = 'https://github.com/${USER_NAME}/${POD_NAME}'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => s.version.to_s }

  s.platform = :osx
  s.osx.deployment_target = "10.10"

  # API 层
  s.public_header_files = '${POD_NAME}/Sources/API/**/*.h'
  # 业务层与组件配置层
  s.source_files = '${POD_NAME}/Sources/**/*'
  # 资源文件
  s.resource_bundles = {
    '${POD_NAME}' => ['${POD_NAME}/Resources/**/*']
  }

  # API子库
  s.subspec 'API' do |api|
    api.public_header_files = '${POD_NAME}/Sources/API/**/*.h'
    api.source_files = '${POD_NAME}/Sources/API/**/*'
  end
  
  # 全局pch声明
  s.prefix_header_contents = <<-EOS
  #import "${POD_NAME}Macros.h"
  #import <ZZScaffold/ZZScaffold.h>
  EOS

  # 依赖的Framework
  # s.frameworks = 'UIKit'

  # 依赖的其他Pod库
  # s.dependency 'ZZScaffold'
  # s.dependency 'ZZKit'
end
