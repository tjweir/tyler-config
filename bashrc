set editing-mode vi
set keymap vi-insert
set -o vi

# Sexy PS1
#export PS1="\[\e]2; \w\a\e[32;1m\]\$\[\e[0m\] "
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]: \[\e[33m\]\w\[\e[0m\]\n\$ '
export PS2="> "
export PS3="#? "
export PS3="+"


export SV_USER='tjweir'
export EDITOR='~/src/macvim/vimsvn/vim7/src/Vim.app/Contents/MacOS/Vim'
export SVN_EDITOR='~/src/macvim/vimsvn/vim7/src/Vim.app/Contents/MacOS/Vim'

#Java
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Home
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export JUNIT_HOME=/src/java/junit4.1
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit.jar
export MAVEN_HOME=/src/maven-2.0.7
export MAVEN_OPTS="-noverify -javaagent:/src/jars/javarebel.jar"

#Groovy
export GROOVY_HOME=~/bin/groovy-1.0
export PATH=$PATH:$GROOVY_HOME/bin

#Grails
export GRAILS_HOME=/src/java/grails
export PATH=$PATH:$GRAILS_HOME/bin

#Scala
export SCALA_HOME=/src/java/scala
export PATH=$PATH:$SCALA_HOME/bin

#JavaFX
export JAVAFX_HOME=~/bin/jfx
export PATH=$PATH:$JAVAFX_HOME/bin

#Quartz
export QUARTZ=~/src/quartz
export CLASSPATH=$CLASSPATH:$QUARTZ/quartz.jar

#PostgreSQL
export POSTGRES_HOME=/Library/PostgreSQL8


#Local bin
export PATH=$PATH:/usr/local/bin:/Users/tjweir/bin:/usr/local/git/bin/

export PATH="$JAVA_HOME/bin:$MAVEN_HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin/:$POSTGRES_HOME/bin:$PATH" 

#CLASSPATH
export set CLASSPATH=$CLASSPATH:/Users/tjweir/Downloads/mysql-connector-java-5.0.4/mysql-connector-java-5.0.4-bin.jar:/src/jars/*:

#aliases
alias l="ls -G"
alias ls="ls -G"
alias sl="ls -G"
alias ll="ls -lh"
alias ..="cd .."
alias ...="cd ../.."


#lift
alias clean="mvn clean"
alias jrun="mvn install jetty:run"
alias cjrun="mvn clean install jetty:run"


#alias v="/Applications/vim70/Vim.app/Contents/MacOS/Vim"
#alias v="~/src/macvim/vimsvn/vim7/src/Vim.app/Contents/MacOS/Vim"
alias v="~/src/repo/vim/vim7/src/Vim"
#alias ov="open ~/src/repo/vim/vim7/src/Vim.app"

alias mv="mv -i"
alias cp="cp -i"
alias ..="cd .."
alias ...="cd ../.."

function gvim {
  /Applications/MacVim/MacVim.app/Contents/MacOS/Vim -g $*;
}














