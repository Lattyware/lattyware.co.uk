require "htmlbeautifier"

def beautify(name, input, output)
  output.puts HtmlBeautifier.beautify(input)
rescue => e
  raise "Error parsing #{name}: #{e}"
end

Jekyll::Hooks.register :site, :post_write do |site|
  Dir.glob(File.join(site.dest, "**", "*.html")) do |path|
    input = File.read(path)
    temppath = path + ".tmp"
    File.open(temppath, "w") do |output|
      beautify path, input, output
    end
    FileUtils.mv temppath, path
  end
end
