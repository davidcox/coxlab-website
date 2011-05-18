# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'redcloth'

include Nanoc3::Helpers::Filtering
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::HTMLEscape
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Capturing

module Nanoc3::Helpers::Tagging

	def site_tags
		ts = {}
		@items.each do |p|
			next unless p[:tags]
			p[:tags].each do |t|
				if ts[t]
					ts[t] = ts[t]+1
				else
					ts[t] = 1 
				end
			end
		end
		ts
	end

	def tags_for(article)
		article.attributes[:tags].map{|t| %{<a class="tag" href="/tags/#{t}/">#{t}</a>}}.join
	end

	def link_for_tag(tag, base_url)
		%[<a href="#{base_url}#{tag.downcase}/" rel="tag">#{tag}</a>]
	end

	def tag_link_with_count(tag, count)
		%{#{link_for_tag(tag, '/tags/')} (#{count})}
	end 

	def sorted_site_tags
		site_tags.sort{|a, b| a[0] <=> b[0]}
	end

	def articles_tagged_with(tag)
		@site.items.select{|p| p.attributes[:tags] && p.attributes[:tags].include?(tag)}.sort{|a,b| a.attributes[:date] <=> b.attributes[:date]}.reverse
	end

end
