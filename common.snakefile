# don't change these :)
OUTPUT_DIR=config.get('output_dir', 'outputs')
SAMPLE_PREP=os.path.join(OUTPUT_DIR, 'prep.sample')
QUERY_PREP=os.path.join(OUTPUT_DIR, 'prep.query')
RESULTS_DIR=os.path.join(OUTPUT_DIR, 'results')

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

if not OUTPUT_DIR.startswith('/'):
    print(f"output directory '{OUTPUT_DIR}' is not an absolute path.")
    do_fail = True

if do_fail:
    print('Snakefile config checks FAILED.', file=sys.stderr)
    sys.exit(-1)

print("Configuration PASSED!", file=sys.stderr)
print('output directory:', OUTPUT_DIR, file=sys.stderr)

