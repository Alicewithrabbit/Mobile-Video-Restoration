FFMPEG="ffmpeg"
src="seq"
streams="streams"
results="results"
run_log="run.log"
echo "">$run_log
rm -rf $streams
mkdir -p $streams
rm -rf $results
mkdir -p $results
chmod +x ./$FFMPEG
if [[ $1 == "dump" ]];then
    decoder="-vcodec libhevc"
fi
for input in $(ls -1 $src | grep "\.mp4$" | sort -n)
do
    filename=$(basename $input .mp4)

    echo "file_input:$input   $filename"

    run_cmd="./$FFMPEG $decoder -i $src/${filename}.mp4 -vsync 0 -pix_fmt yuv420p -y $streams/${filename}.yuv"
    echo "$run_cmd">>$run_log
    echo "$run_cmd"
    stdout1=$($run_cmd 2>&1)
    echo "$stdout1">>$run_log

    if [[ $1 == "dump" ]];then
        mv $src/*.log $results/
    fi

done

