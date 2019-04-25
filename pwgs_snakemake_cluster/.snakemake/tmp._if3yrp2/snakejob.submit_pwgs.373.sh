#!/bin/sh
# properties = {"type": "single", "rule": "submit_pwgs", "local": false, "input": ["/data/browna6/evolution/pwgs/phyloinputs/egfr_exome/NCI0411/NCI0411_4Met.params.json", "/data/browna6/evolution/pwgs/phyloinputs/egfr_exome/NCI0411/NCI0411_4Met.cnvs.txt", "/data/browna6/evolution/pwgs/phyloinputs/egfr_exome/NCI0411/NCI0411_4Met.ssm.txt"], "output": ["/data/browna6/evolution/pwgs/pwgs_output/egfr_exome_bysample/NCI0411/NCI0411_4Met/trees.zip"], "wildcards": {"patient": "NCI0411", "sample": "NCI0411_4Met"}, "params": {"output_dir": "/data/browna6/evolution/pwgs/pwgs_output/egfr_exome_bysample/NCI0411/NCI0411_4Met", "pwgs_python_directory": "/home/browna6/phylowgs/", "n_chains": 5, "r1": 682, "r2": 757, "r3": 241, "r4": 560, "r5": 171}, "log": [], "threads": 5, "resources": {}, "jobid": 373, "cluster": {"partition": "norm", "time": 10, "extra": "--gres=lscratch:10"}}
cd /spin1/users/browna6/pwgs_snakemake && \
/usr/local/Anaconda/envs_app/snakemake/5.4.0/bin/python3.6 \
-m snakemake /data/browna6/evolution/pwgs/pwgs_output/egfr_exome_bysample/NCI0411/NCI0411_4Met/trees.zip --snakefile /spin1/users/browna6/pwgs_snakemake/run_full_pipeline.snakefile \
--force -j --keep-target-files --keep-remote \
--wait-for-files /spin1/users/browna6/pwgs_snakemake/.snakemake/tmp._if3yrp2 /data/browna6/evolution/pwgs/phyloinputs/egfr_exome/NCI0411/NCI0411_4Met.params.json /data/browna6/evolution/pwgs/phyloinputs/egfr_exome/NCI0411/NCI0411_4Met.cnvs.txt /data/browna6/evolution/pwgs/phyloinputs/egfr_exome/NCI0411/NCI0411_4Met.ssm.txt --latency-wait 120 \
 --attempt 1 --force-use-threads \
--wrapper-prefix https://bitbucket.org/snakemake/snakemake-wrappers/raw/ \
  -p --nocolor \
--notemp --no-hooks --nolock --mode 2  --allowed-rules submit_pwgs  && touch "/spin1/users/browna6/pwgs_snakemake/.snakemake/tmp._if3yrp2/373.jobfinished" || (touch "/spin1/users/browna6/pwgs_snakemake/.snakemake/tmp._if3yrp2/373.jobfailed"; exit 1)

