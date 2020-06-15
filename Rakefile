# filename: Rakefile
task :default => [:jekyll_build]

task :jekyll_build do
	puts "Running CI tasks..."
	# Runs the jekyll build command for production
	# TravisCI will now have a site directory with our
	# statically generated files.
	sh("JEKYLL_ENV=production bundle exec jekyll build")
	puts "Jekyll successfully built"
end
