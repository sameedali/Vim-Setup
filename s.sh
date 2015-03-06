for i in $(ls -d bundle/*)
    do
        if [ -d "$i"/.git ]
            then
                echo $i
                git submodule add $(cd $i && git remote show origin | grep Fetch | awk '{print $3}') ./$i
        fi;
done;
