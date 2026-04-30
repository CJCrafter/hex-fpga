if [ "$#" -ne 1 ]; then
   echo "Usage: $0 <results_directory_name>"
   exit 1
fi

if [ -d "results/$1" ]; then
    echo "Directory results/$1 already exists. Please choose a different name."
    exit 1
fi


mkdir results/$1
cp -r kria results/$1/krea
cp -r mcts.prj results/$1/krea
cp *.cpp results/$1/
cp *.h results/$1/
