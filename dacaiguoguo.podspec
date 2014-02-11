Pod::Spec.new do |s|
  s.name     = 'UIView-Category'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'UIView-Category.'
  s.homepage = 'https://github.com/dacaiguoguo/UIView-Category'
  s.authors  = {'dacaiguoguo' => 'dacaiguoguo@163.com'}
  s.source   = { :git => 'https://github.com/dacaiguoguo/UIView-Category.git'}
  s.source_files = 'CustomView'
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
end
