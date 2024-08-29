source /tmp/variables.sh

echo "Project dir: $project_dir"
echo "Project: $project"
echo "Repo: $project_repo"
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "Using conditional statement to create a project directory and project"

cd ~ 

if [ ! -d $project_dir ]
then 
    echo "Directory $project_dir does not exist... making directory $project_dir"
    mkdir -p $project_dir
fi
echo "Directory $project_dir exists." 


if [ ! -d $project ]
then
    echo "Directory $project does not exist... cloning $project_repo"
    cd $project_dir
    git clone $project_repo
    cd ~
fi
echo "Directory $project exists."
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "Navigate to project, then navigate to area wwhere files were cloned"
cd $project
pwd

echo ""
echo "list top level or root of files with project pulled from github"
ls
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "Navigate to project, then navigate to area wwhere files were cloned"
cd $project
pwd

echo ""
echo "list all files in long format"
ls -al  
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "Look for posts"
export posts=$project/_posts  
cd $posts 
pwd 
ls -lR  
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
cd $project
echo "show the contents of README.md"
echo ""

cat README.md  
echo ""
echo "end of README.md"
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
echo "Show the shell environment variables, key on left of equal value on right"
echo ""

env
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "
cd $project

echo ""
echo "show the secrets of .git config file"
cd .git
ls -l config

echo ""
echo "look at config file"
cat config
echo " "
echo " "
echo " "
echo "--------------------------------------------------------------------------------"
echo " "
echo " "
echo " "

echo "Ruby Version: $(ruby --version)"
echo "Git Version: $(git --version)"
echo "Python Version: $(python --version)"
echo "Bundle Version: $(bundle --version)"
echo "Gem Version: $(gem --version)"

cd /tmp

file="sample.md"
if [ -f "$file" ]; then
    rm $file
fi


tee -a $file >/dev/null <<EOF



actions=("ls,list-directory" "cd,change-directory" "pwd,present-working-directory" "if-then-fi,test-condition" "env,bash-environment-variables" "cat,view-file-contents" "tee,write-to-output" "echo,display-content-of-string" "echo_text_>\$file,write-content-to-file" "echo_text_>>\$file,append-content-to-file")

for action in ${actions[@]}; do
  action=${action//-/ }  
  action=${action//,/: } 
  action=${action//_text_/ \"sample text\" } 
  echo "    - ${action//-/ }" >> $file  
done

echo ""
echo "File listing and status"
ls -l $file 
wc $file  
mdless $file  

rm $file  



