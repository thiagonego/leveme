require 'uri'

class EncurtarController < ApplicationController
  
  layout 'application', :except => :api

	def index
		@url_ = Url.new
	end
	
	def short	  
	  params[:url][:href].gsub!(" ","") unless params[:url][:href].blank?
		uri = URI::parse(params[:url][:href])
		if uri.kind_of? URI::HTTP or uri.kind_of? URI::HTTPS
			@link = Link.short_link(params[:url][:href]) 	
		else
			@uri_invalid = true
		end		
		
		respond_to do |format|
			format.js
		end
	end

	def go
		link = Link.find_by_atalho(params[:short_url])
		if link.nil?
			flash[:error] = "Link não encontrado no sistema"
			redirect_to root_path		
		else
			link.visitas << Visita.create(:link => link)
			link.save	    
			redirect_to link.url.href, :status => 301		
		end	  
	end

	def api
	  params[:url].gsub!(" ","") unless params[:url].blank?
		uri = URI::parse(params[:url])
		if uri.kind_of? URI::HTTP or uri.kind_of? URI::HTTPS
			@link = Link.short_link(params[:url]) 	
		else
			@uri_invalid = true
		end
			  
	  respond_to do |format|	      		
		  format.txt{ render :text => "#{$URL_ROOT}/#{@link.atalho}" }
		  format.xml{}  		
	  end	  
	end
	
end