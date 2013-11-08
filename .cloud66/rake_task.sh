#!/bin/bash
FILE=/tmp/rake_task_done

if [ -f $FILE ]
then
        echo "File $FILE exists..."
else
    bundle exec rake db:migrate
    touch /tmp/rake_task_done
fi
