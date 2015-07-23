cp = require '../../script/utils/child-process-wrapper.js'
workDir = null

module.exports = (grunt) ->
  grunt.registerTask 'bootstrap-atom', 'Bootstraps Atom', ->
    done = @async()

    process.chdir(grunt.config.get('workDir'))

    cp.safeExec 'npm config set loglevel silly --global && node script/bootstrap --verbose', ->
      done()
