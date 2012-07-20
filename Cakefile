fs            = require 'fs'
{print}       = require 'util'
{spawn, exec} = require 'child_process'
{log, error}  = console; print = log

run = (name, args...) ->
    proc = spawn(name, args)
    proc.stdout.on('data', (buffer) -> print buffer if buffer = buffer.toString().trim())
    proc.stderr.on('data', (buffer) -> error buffer if buffer = buffer.toString().trim())
    proc.on('exit', (status) -> process.exit(1) if status isnt 0)

shell = (cmds, callback) ->
    cmds = [cmds] if Object::toString.apply(cmds) isnt '[object Array]'
    exec(cmds.join(' && '), (err, stdout, stderr) ->
        print trimStdout if trimStdout = stdout.trim()
        error stderr.trim() if err
        callback() if callback
    )

task 'server', 'start server', ->
  run 'serve', '.'

task 'watch', 'watch and compile coffeescript', ->
  run 'coffee', '-wco', 'apps/js', 'apps/coffee'
  run 'coffee', '-wco', 'test/spec/js', 'test/spec/coffee'

task 'test', 'execute tests', ->

task 'docs', 'build docts', ->

task 'build', 'run build scripts', ->