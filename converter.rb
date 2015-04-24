#!/usr/bin/env ruby
require "rubygems"
require "crack"
require "json"

xmls = Dir["*.xml"]

xmls.each do |xml|
    myXML = Crack::XML.parse(File.read(xml))
    json = myXML.to_json
    jsonName = xml.split(".")[0]+".json"
    File.write('./jsons/'+jsonName, json)
end
