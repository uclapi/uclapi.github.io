var gulp = require('gulp'); 
var less = require('gulp-less');

module.exports =  function() {
  gulp.src('./src/less/index.less')
    .pipe(less())
    .pipe(gulp.dest('./statics/stylesheets/'));
};
