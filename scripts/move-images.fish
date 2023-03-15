#! /usr/bin/env fish

function move-images -d "Move images from Downloads to figures"
    for file in ~/Downloads/Canonical\ -\ *.jpg
        set -l filename (basename $file)
        # remove Canonical - from filename
        set -l newname (echo $filename | sed -e 's/Canonical - //')

        # replace spaces with dashes
        set -l newname (echo $newname | sed -e 's/ /-/g')
        # to lowercase
        set -l newname (echo $newname | tr '[:upper:]' '[:lower:]')
        echo $oldname -> $newname
        mv $file ./figures/$newname
    end
end

move-images
 while true
    fswatch -1 5 ~/Downloads
    sleep 5
    move-images
end
