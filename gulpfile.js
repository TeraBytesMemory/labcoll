var gulp = require('gulp');
var sass = require('gulp-sass');
var webpack = require('gulp-webpack');
//var $ = require("gulp-load-plugins")();

var srcPath = 'frontend/'
var destPath = 'app/assets/'

gulp.task('default', function () {
    gulp.watch(srcPath + 'stylesheets/**/*.scss', ['sass']);
});

gulp.task('javascript', function () {
    gulp.src(srcPath + 'javascripts/application.js')
        .pipe(webpack(require('webpack.config.js')))
        .pipe(gulp.dest(destPath + 'javascripts/'))
})

gulp.task('sass', function () {
    gulp.src(srcPath + 'stylesheets/application.scss')
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest(destPath + 'stylesheets/'));
});
