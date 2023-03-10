for i in 6 7 8 9 10;
    do
    for j in 01 02 03 04 05 06 07 08 09 10 11 12;
    do
        wget  "http://files.pushshift.io/reddit/comments/RC_200$i-$j.zst"
        zstd -d RC_200$i-$j.zst --long=31
        jq '{body: .body, subreddit: .subreddit}' RC_200$i-$j > RC_200$i-$j.json
        rm RC_200$i-$j.zst
        rm RC_200$i-$j
    done
done

