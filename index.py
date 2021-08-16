import os
from bs4 import BeautifulSoup
import json

ignore = ['.gitignore', '.github', 'dream-diary', 'chemistry']

root = './exports/'


def walkdir(func, root=root):
    lst = []
    for f in filter(lambda x: x.name not in ignore, os.scandir(root)):
        if f.is_dir():
            lst.append(walkdir(func, f))
        else:
            if f.name.endswith('.html'):
                with open(f) as fp:
                    lst.append({'toc': func(fp),
                                'filename': f.name})
    files = list(filter(lambda x: x, lst))

    return files if type(root) is str else {'dir': root.name,
                                            'files': files}


def scrape(f):
    def fnl(lst):
        return list(filter(lambda x: x != '\n', lst))

    soup = BeautifulSoup(f, 'html.parser')

    toc = soup.find(id='text-table-of-contents')
    if toc is None:
        return None
    toc = fnl(toc.contents[1].contents[1:-1])

    def walksection(contents):
        data = []

        for section in contents:
            head = fnl(section.contents)[0]
            subsections = fnl(fnl(section.contents)[1].contents) \
                if len(fnl(section.contents)) > 1 else []

            section_name = head.string
            section_href = head.attrs['href']

            section_d = {'name': section_name,
                         'href': section_href,
                         'children': None}

            if subsections:
                section_d['children'] = \
                    walksection(fnl(subsections))

            data.append(section_d)
        return data

    return walksection(toc)


def main():
    with open('./exports/index.json', 'w') as w:
        w.write(json.dumps(walkdir(scrape)))


main()
