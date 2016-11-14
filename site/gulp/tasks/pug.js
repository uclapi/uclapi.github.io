var pug = require('gulp-pug');
var gulp = require('gulp');

module.exports = function(){
  gulp.src('./src/views/index.pug')
    .pipe(pug())
    .pipe(gulp.dest('./statics'));
};
