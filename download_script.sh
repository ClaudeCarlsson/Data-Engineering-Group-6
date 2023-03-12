for i in 06 07 08 09 10;
    do
    for j in 01 02 03 04 05 06 07 08 09 10 11 12;
    do
        wget  "http://files.pushshift.io/reddit/comments/RC_20$i-$j.zst"

        zstd -d RC_20$i-$j.zst --long=31
	rm RC_20$i-$j.zst

        jq --compact-output '{body: .body, subreddit: .subreddit}' RC_20$i-$j > RC_20$i-$j.json
        rm RC_20$i-$j

	./hadoop-3.3.4/bin/hdfs dfs -put -f /home/ubuntu/RC_20$i-$j.json
	rm RC_20$i-$j.json
    done
done
