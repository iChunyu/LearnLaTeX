import os

contents = open('contents.tex',
        mode = 'w',
        encoding = 'utf8')

files = os.listdir()
files.sort()

for year in files:
    if '20' not in year:
        continue
    months = os.listdir(year)
    months.sort()
    for mon in months:
        days = os.listdir(year+'/'+mon)
        days.sort()
        for day in days:
            contents.write('\\input{{{}}}\n'.format(year+'/'+mon+'/'+day))
        contents.write('\n')
    contents.write('\n')
    
contents.close()

os.system('xelatex SpringDiary.tex')
# os.system('xelatex SpringDiary.tex')

remove_list = [
    '.aux',
    '.bbl',
    '.blg',
    '.log',
    '.out',
    '.toc',
    '.bcf',
    '.xml',
    '.synctex',
    '.nlo',
    '.nls',
    '.bak',
    '.ind',
    '.idx',
    '.ilg',
    '.lof',
    '.lot',
    '.ent-x',
    '.tmp',
    '.ltx',
    '.los',
    '.lol',
    '.loc',
    '.listing',
    '.gz',
    '.userbak',
    '.nav',
    '.snm',
    '.vrb',
    '.synctex(busy)',
    '.nav',
    '.snm',
    '.vrb',
    '.fls',
    '.xdv',
    '.fdb_latexmk']

files = os.listdir()
for filename in files:
    suffix = os.path.splitext(filename)[-1]
    if suffix in remove_list:
        os.remove(filename)
os.remove('contents.tex')