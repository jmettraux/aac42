
File.readlines(ARGV[0]).each do |line|
  l = line.strip.gsub(/;.*/, '')
  next if l == ''
  l.split(/\s*\\\s*/).each { |ll| puts ll }
end

