module Storage
  DIR = './storage/'.freeze
  FILE = 'storage'.freeze
  TYPE = '.yml'.freeze
  FILE_NAME = DIR + FILE + TYPE

  def save(data)
    File.open(FILE_NAME, 'w') { |params| params.write(YAML.dump(data)) }
  end

  private

  def load
    YAML.load_file(FILE_NAME) if storage_created?
  end

  def storage_created?
    File.exist?(FILE_NAME)
  end
end
