module SiteUtils

	def write_tag_page(dir, tag, count)
		meta = {}
		meta[:title] = "Tag: #{tag}"
		meta[:type] = 'page'
		meta[:filters_pre] = ['erb']
		meta[:feed] = "/tags/#{tag}/"
		meta[:feed_title] = "Tag '#{tag}'"
		meta[:permalink] = tag
		pl = (count == 1) ? ' is' : 's are'
		contents = %{
<p>#{count} item#{pl} tagged with <em>#{tag}</em>:</p>
<ul class="tag_results">
	<% articles_tagged_with('#{tag}').each do |a| %>
		<%= render 'tagged_item', :tagged_item => a %>
	<% end %>
</ul>
		}
		# Write html page
		write_item dir.join("#{tag}.textile"), meta, contents
	end

	def write_tag_feed_page(dir, tag, format)
		f = format.downcase
		meta = {}
		meta[:title] = "H3RALD - Tag '#{tag}' (#{format} Feed)"	
		meta[:type] = 'feed'
		meta[:permalink] = "tags/#{tag}/#{f}"
		contents = %{<%= #{f}_feed(:articles => articles_tagged_with('#{tag}'))%>}
		write_item dir.join("#{tag}-#{f}.xml"), meta, contents
	end

	def write_archive_page(dir, name, count)
		meta = {}
		meta[:title] = "Archive: #{name}"
		meta[:type] = 'page'
		meta[:filters_pre] = ['erb']
		meta[:permalink] = name.downcase.gsub /\s/, '-'
		pl = (count == 1) ? ' was' : 's were'
		contents = %{
<p>#{count} item#{pl} written in <em>#{name}</em>:</p>
<ul>
	<% articles_by_month.select{|i| i[0] == "#{name}"}[0][1].each do |a|%>
		<%= render 'dated_article', :article => a %>
	<% end %>
</ul>
		}
		# Write file
		write_item dir.join("#{meta[:permalink]}.textile"), meta, contents
	end

	def write_item(path, meta, contents)
		path.parent.mkpath
		(path).open('w+') do |f|
			f.print "--"
			f.puts meta.to_yaml
			f.puts "-----"
			f.puts contents
		end	
	end

end