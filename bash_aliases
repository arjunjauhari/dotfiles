# General
alias l="ls -lhtr"
alias lpy="ls -lhtr *.py"
alias ldir="ls -lhtr | grep ^d"
alias tagpy="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags ./"
alias tagjs="ctags -R --fields=+l --languages=javascript -f ./tags ./"
alias dl="docker ps -l -q"
alias home_tunnel="ssh -f -L 5999:127.0.0.1:5900 arjunjauhari@98.109.27.184 sleep 15"

# Mac specific
alias iCloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias vi="mvim"
alias vim="mvim"
alias cdwork="cd /Users/arjunj/workspace"
#alias cdml="cd /Users/arjunjauhari/Desktop/fun-ml"

# Ubuntu specific
#alias vi="vim"
#alias tmux="TERM=screen-256color-bce tmux -u"
#
# Old
#alias lab4750="ssh -X aj526@amdpool.ece.cornell.edu"
#alias cdml="cd /home/arjun/Desktop/Cornell_courses/ML"
#alias cdla="cd /home/arjun/Desktop/Cornell_courses/Linear_Algebra"
#alias cdcc="cd /home/arjun/Desktop/Cornell_courses"
#alias ecl="$HOME/eclipse/java-mars/eclipse/eclipse"
