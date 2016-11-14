var gulp = require('gulp');

module.exports = function() {
  gulp.watch('./src/less/*.less', ['less']);
  gulp.watch('./src/views/*.pug',['pug']);
};
