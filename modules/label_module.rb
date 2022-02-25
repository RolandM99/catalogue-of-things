require_relative '../label'
require 'json'
require 'date'

module LabelsController
  def load_labels
    file = './data_files/labels.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |element|
        data.push(Label.new(element['title']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def save_labels
    data = []
    @labels.each do |label|
      data.push({ title: label.title })
    end
    open('./data_files/labels.json', 'w') { |f| f << JSON.generate(data) }
  end
end
