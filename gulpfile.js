var del     = require('del');
var gulp    = require('gulp');
var ghPages = require('gulp-gh-pages');

gulp.task('deploy', function() {
    return gulp.src('./public/**/*')
        .pipe(ghPages());
});

gulp.task('clean', function () {
    return del([
        '.publish',
        'public',
        '*.log'
    ]);
});
