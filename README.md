# Requirements
- Ruby 2.2+ (No promise of support for pre Ruby 2.2, but it will probably work)
- Bundler

# Running
The command `rake compile` is used to compile the source files.
The compiled site can be viewed in the public folder.

~~Right now each source file needs to be manually added to the rake compile command.
I know it sucks, but I don't think it's worth it to add live-compilation support yet.~~

The command `ruby bin/watcher.rb` works to compile source files on the fly.

