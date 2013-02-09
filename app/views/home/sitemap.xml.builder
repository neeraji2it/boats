xml.instruct!

xml.urlset(:xmlns => "http://www.sitemaps.org/schemas/sitemap/0.9") {
  xml.url {
    xml.loc(root_url)
    xml.changefreq("daily")
    xml.priority("0.5")
  }

  @boats.each do |boat|
    xml.url {
      xml.loc(boat_url(boat))
      xml.changefreq("daily")
      xml.priority("0.5")
    }
  end
  
  @destinations.each do |destination|
    xml.url {
      xml.loc(destination_url(destination))
      xml.changefreq("weekly")
      xml.priority("0.5")
    }
  end
}