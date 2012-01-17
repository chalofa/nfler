def read_test_file(file_name)
  file = File.join(File.dirname(__FILE__), '..', 'test_files', file_name)
  File.read file
end
