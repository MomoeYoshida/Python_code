#!/bin/bash

LOGDIR="/gpfs01/v2/Q9157/momoe/geo_polar_blended_sst/Linux_JCUHPC/blended_home/Logs"

mkdir -p "$LOGDIR"

suffixes=(
"_thin_5"
"_thin_4"
"_thin_3"
"_thin_2"
)

for suffix in "${suffixes[@]}"
do
    export SUFFIX="$suffix"

    if [ -z "$suffix" ]; then
        jobname="save_ts_full"
    else
        jobname="save_ts_${suffix/_/}"
    fi

    logfile="${LOGDIR}/${jobname}.log"

    echo "Submitting: $jobname"

    qsub \
        -v SUFFIX="$SUFFIX" \
        -N "$jobname" \
        -o "$logfile" \
        run_save_ts_nc.pbs

done
