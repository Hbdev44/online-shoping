# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	 
	


	helper :all # include all helpers, all the time
	protect_from_forgery # See ActionController::RequestForgeryProtection for details

	# Scrub sensitive parameters from your log
	# filter_parameter_logging :password
	def cache_google_translation
    bound_vars = [params[:translation], params[:phrase]]
    ActiveRecord::Base.connection.execute("UPDATE globalize_translations SET built_in = 2, text = ? WHERE tr_key = ? AND language_id = #{Locale.language.id}".gsub('?'){ActiveRecord::Base.connection.quote(bound_vars.shift)})
    Locale.translator.put_in_cache(params[:phrase],Locale.language.iso_639_1,params[:translation])
    render :text => ''
  end

end
