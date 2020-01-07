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

  s.ios.deployment_target = '8.0'

  # 资源文件
  s.resource_bundles = {
    '${POD_NAME}' => ['${POD_NAME}/Resources/**/*']
  }

  # API子库
  s.subspec 'API' do |a|
    a.public_header_files = '${POD_NAME}/Sources/API/**/*.h'
    a.source_files = '${POD_NAME}/Sources/API/**/*'
  end

  # 业务子库
  s.subspec 'Business' do |b|
    b.source_files = '${POD_NAME}/Sources/Business/**/*'
    b.dependency 'ZZScaffold'
    b.dependency '${POD_NAME}/API'

    b.prefix_header_contents = <<-EOS
      #import "${POD_NAME}Macros.h"
      #import <ZZScaffold/ZZScaffold.h>
    EOS
  end

  # 组件配置子库
  s.subspec 'Module' do |m|
    m.source_files = '${POD_NAME}/Sources/Module/**/*'
    m.dependency 'ZZScaffold'
    m.dependency '${POD_NAME}/API'
    m.dependency '${POD_NAME}/Business'
  end
end
