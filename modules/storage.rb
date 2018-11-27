module Storage
  DIR = './storage/'.freeze
  FILE = 'storage'.freeze
  TYPE = '.yml'.freeze
  FILE_NAME = DIR + FILE + TYPE

  def save(data)
    File.open(FILE_NAME, 'w') { |params| params.write(YAML.dump(data)) }
  end
end
