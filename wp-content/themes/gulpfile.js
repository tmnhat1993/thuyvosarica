var gulp = require('gulp'),
settings = require('./settings'),
webpack = require('webpack'),
browserSync = require('browser-sync').create(),
postcss = require('gulp-postcss'),
rgba = require('postcss-hexrgba'),
autoprefixer = require('autoprefixer'),
cssvars = require('postcss-simple-vars'),
nested = require('postcss-nested'),
cssImport = require('postcss-import'),
mixins = require('postcss-mixins'),
colorFunctions = require('postcss-color-function');
sass = require('gulp-sass');

gulp.task('styles', function() {
  return gulp.src(settings.themeLocation + 'assets/css/style.css')
    .pipe(postcss([cssImport, mixins, cssvars, nested, rgba, colorFunctions, autoprefixer]))
    .on('error', (error) => console.log(error.toString()))
    .pipe(gulp.dest(settings.themeLocation));
});

gulp.task('scripts', function(callback) {
  webpack(require('./webpack.config.js'), function(err, stats) {
    if (err) {
      console.log(err.toString());
    }

    console.log(stats.toString());
    callback();
  });
});

gulp.task('watch', function() {
  browserSync.init({
    notify: false,
    proxy: settings.urlToPreview,
    ghostMode: false
  });

  gulp.watch('./**/*.php', function() {
    browserSync.reload();
  });
  gulp.watch(settings.themeLocation + 'assets/scss/**/*.scss', ['waitForStyles']);
  gulp.watch([settings.themeLocation + 'assets/js/modules/*.js', settings.themeLocation + 'assets/js/scripts.js'], ['waitForScripts']);
});

gulp.task('waitForStyles', ['sass'], function() {
  return gulp.src(settings.themeLocation + 'assets/css/styles.css')
    .pipe(browserSync.stream());
});

gulp.task('waitForScripts', ['scripts'], function() {
  browserSync.reload();
});

gulp.task('sass',function(){
  return gulp.src(settings.themeLocation + 'assets/scss/**/*.scss')
    .pipe(sass())
    .pipe(gulp.dest(settings.themeLocation + 'assets/css'))
});