import os

EXPORT = ['go-ethereum-1.10.18', '.git', '.mypy_cache', '.vscode']

def search_dir(path: str) -> None:
    for ex in EXPORT:
        if ex in path:
            # print(path)
            return
    for p in os.listdir(path):
        p = os.path.join(path, p)
        if os.path.isdir(p):
            search_dir(p)
        elif os.path.isfile(p) and p.endswith('.sh'):
            print(p)
            with open(p, 'r+', encoding='UTF-8') as fp:
                s = fp.read()
                s = s.replace('\r\n', '\n')
                fp.seek(0)
                fp.write(s)

if __name__ == '__main__':
    search_dir('.')
