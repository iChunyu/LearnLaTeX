import os

count = 1
for year in range(2021,2026):
    for mon in range(1,13):
        os.makedirs('%d/%02d' % (year,mon))
        for day in range(1,31):
            diary = open('%d/%02d/%02d.tex' % (year,mon,day),
                mode = 'w',
                encoding = 'utf8')
            diary.write('\\begin{diary}{%d-%02d-%02d}\n' % (year,mon,day))
            diary.write('\\zhlipsum[%d]\n' % (count%50+1))
            count += 1
            diary.write('\\end{diary}')
            diary.close()