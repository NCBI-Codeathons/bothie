#! /usr/bin/env python3
import subprocess
import datetime
import shutil
import argparse


def main():
    p = argparse.ArgumentParser()
    p.add_argument('config_file')
    p.add_argument('query')
    args = p.parse_args()
    
    print('removing outputs/')
    try:
        shutil.rmtree('./outputs/')
    except FileNotFoundError:
        pass

    print('installing software:')
    subprocess.check_call(f'snakemake -j 1 --use-conda install_software --configfile {args.config_file} -C query_file={args.query}',
                          shell=True)

    print(datetime.datetime.now(), 'START SAMPLE PREP')
    subprocess.check_call(f'snakemake -j 1 --use-conda prepare_sample  --configfile {args.config_file} -C query_file={args.query}',
                          shell=True)
    print(datetime.datetime.now(), 'END SAMPLE PREP')

    print(datetime.datetime.now(), 'START QUERY PREP')
    subprocess.check_call(f'snakemake -j 1 --use-conda prepare_query --configfile {args.config_file} -C query_file={args.query}',
                          shell=True)
    print(datetime.datetime.now(), 'END QUERY PREP')

    print(datetime.datetime.now(), 'START DO QUERY')
    subprocess.check_call(f'snakemake -j 1 --use-conda do_query --configfile {args.config_file} -C query_file={args.query}', shell=True)
    print(datetime.datetime.now(), 'END DO QUERY')

if __name__ == '__main__':
    main()
