set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "thoth-zuul[bot]" w lines, 'commits_by_author.dat' using 1:3 title "Fridolin Pokorny" w lines, 'commits_by_author.dat' using 1:4 title "Kebechet" w lines, 'commits_by_author.dat' using 1:5 title "Christoph Görn" w lines, 'commits_by_author.dat' using 1:6 title "Thoth Bot" w lines, 'commits_by_author.dat' using 1:7 title "Fridolín Pokorný" w lines, 'commits_by_author.dat' using 1:8 title "kebechet" w lines, 'commits_by_author.dat' using 1:9 title "Marcel Hild" w lines, 'commits_by_author.dat' using 1:10 title "Hema Veeradhi" w lines
