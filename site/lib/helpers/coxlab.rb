module Nanoc3::Helpers
  module CoxLab

    # Personnel-related

    def personnel
      personnel_list = @items.find_all{|item| item.identifier =~ /people\// &&
                                              item[:name] != nil}
    end

    def sorted_personnel
      personnel_list = personnel
      personnel_list.sort!{|item1,item2| item1[:name].split(" ")[1] <=>
                                         item2[:name].split(" ")[1]}
    end

    def person_named(name)
      people = personnel
      person = (people.find_all{|item| item[:short_name] == name})[0]
    end

    def postdocs
      sorted_personnel.find_all{|item| item.identifier =~/postdoc/}
    end

    def staff
      sorted_personnel.find_all{|item| item.identifier =~/staff/}
    end

    def students
      sorted_personnel.find_all{|item| item.identifier =~/students/}
    end

    def alumni
      sorted_personnel.find_all{|item| item.identifier =~/alumni/}
    end

    # Projects-related

    def projects
      project_list= @items.find_all do |item|
        item.identifier =~ /^\/projects\/\w+/ && item.identifier !~ /projects\/\w+\/\w/ && item[:active] != false
      end
      project_list.sort do |item1, item2|
        if item1[:order] && item2[:order]
          item1[:order] <=> item2[:order]
        elsif item1[:order]
          -1
        elsif item2[:order]
          1
        else
          0
        end
      end
    end


    def subprojects
      project_list= @items.find_all do |item|
        item.identifier =~ /projects\/subprojects\/\w+/ &&
          item[:active] != false
      end
    end

    def project_highlights
      all_projects = projects + subprojects
      all_projects.find_all{ |p| p[:highlight_picture] != nil}
    end

    def subprojects_with_tag(t)
      subprojects.find_all do |item|
        item[:tags] != nil &&
          (item[:tags].count{ |tag| tag =~ /#{Regexp.escape(t)}/ } > 0)
      end
    end

    # Publication-related

    def publications
      pub_items=@items.find_all{|item| item.identifier =~ /publications\/\w+/}
      pub_items=pub_items.find_all{ | item| item[:year] != nil }
      pub_items.sort!{ | item1, item2 | item1[:year] <=> item2[:year] }
      pub_items.reverse!
    end

    def publication_for_id(id_name)
      pubs = publications.find_all{ |p| p.identifier =~ /#{Regexp.escape(id_name)}/}
      pubs[0]
    end

    def featured_with_tag(t)
      publications.find_all do |item|
        item[:tags].count{ |tag| tag =~ /#{Regexp.escape(t)}/} > 0 &&
        item[:tags].count{ |tag| tag =~ /featured/} > 0
      end
    end

    def publication_years
      publications.map{ |p| p[:year] }.uniq!
    end

    def publications_for_year(y)
      publications.find_all{ |p| p[:year] == y }
    end

    def latexify_author_list(l)
      return "" if l.nil?

      l2 = l.map do |a|
        a_components = a.split(" ")
        last_name = a_components[-1]
        initials = a_components[0..-2].map{ |n| n[0] + "."}
        last_name + ", " + initials.join(" ")
      end

      l2.join(" and ")
    end

    def thumbnail_for_path(p)
      gallery_path = p.split("/")[0..-2].join("/")
      file_name = p.split("/")[-1]
      file_stem = file_name.split(".")[0..-2].join("/")
      ext = p.split(".")[-1]
      gallery_path + "/thumbs/" + file_stem + "-thumb" + "." + ext
    end


    def news_item_years
      articles.map{ |a| Time.gm(a[:created_at]).year }.uniq!
    end

    def news_items_for_year(y)
      a = articles.select{ |x|  y == Time.new(x[:created_at]).year }
      a.sort! do |a1,a2|
        Time.new(a1[:created_at]) <=> Time.new(a2[:created_at])
      end
    end

  end
end
