# don't change these :)
SAMPLE_PREP = config['sample_prep_dir']
QUERY_PREP = config.get('query_prep_dir', '')
RESULTS_DIR = config.get('results_dir', '')
LOG_DIR = config['log_dir']

###
### check configuration
###


print("Checking configuration...", file=sys.stderr)

do_fail = False

SAMPLES = [ x.strip() for x in SAMPLES ]
SAMPLES = [ x for x in SAMPLES if x ]

if not SAMPLES:
    print("No files in 'metagenome_files' in the config?", file=sys.stderr)
    do_fail = True

print('QUERY is:', (QUERY,), file=sys.stderr)
#if not QUERY:
#    print("No 'query' in the config?", file=sys.stderr)
#    do_fail = True

for sample in SAMPLES:
    if not os.path.exists(sample):
        print(f"metagenome file '{sample}' does not exist.", file=sys.stderr)
        do_fail = True

#if not os.path.exists(QUERY):
#    print(f"query file '{QUERY}' does not exist.", file=sys.stderr)
#    do_fail = True

if do_fail:
    print('Snakefile config checks FAILED.', file=sys.stderr)
    sys.exit(-1)

print("Configuration PASSED!", file=sys.stderr)
