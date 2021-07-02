#!~/software/miniconda3_210410/bin/python

import os
import yaml


def main(install):
    print(os.getcwd())
    with open(install, 'r') as f:
        config = yaml.load(f, yaml.FullLoader)
    for section in conf:
        if 'link' in section:
            for link, source in section['link']:
                print(f'{link=}\n{source=}\n\n')


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--install-yaml',
                        default='install.config.yaml', dest='install',
                        help='Path to the dotbot install config yaml file.')
    args = parser.parse_args()
    main(args.install)
