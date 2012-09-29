# in config/initializers/locale.rb
 
# tell the I18n library where to find your translations
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
 
# # set default locale to something other than :en
# I18n.default_locale = :pt
require 'i18n/backend/active_record'
I18n.backend = I18n::Backend::ActiveRecord.new

I18n::Backend::ActiveRecord.send(:include, I18n::Backend::Memoize)
I18n::Backend::ActiveRecord.send(:include, I18n::Backend::Flatten)
I18n::Backend::Simple.send(:include, I18n::Backend::Memoize)
I18n::Backend::Simple.send(:include, I18n::Backend::Pluralization)

I18n.backend = I18n::Backend::Chain.new(I18n::Backend::Simple.new, I18n.backend)