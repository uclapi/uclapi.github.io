var gulp = require('./gulp')([
  'pug',
  'less',
  'watch',
]);

gulp.task('build', ['pug', 'less']);
gulp.task('default', ['build', 'watch']);
