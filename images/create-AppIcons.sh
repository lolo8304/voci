
convert_to_gemetry() {
    input=$1
    ext=$2
    geo_orig=$3
    width=$3
    factor=$4
    count_s=$4
    count=$5
    geo=$(( geo_orig * factor ))

    for (( c=${count_s}; c<$count; c++ ))
    do  
        echo "create ${input}_${width}x${width}@${factor}x.${ext}"
        convert ${input}.${ext} -geometry ${geo}x${geo} AppIcon.appiconset/${input}_${width}x${width}@${factor}x.${ext}
        factor=$(( factor + 1 ))
        geo=$(( geo_orig * factor ))
    done
    echo "create ${input}_${width}x${width}@${factor}x.${ext}"
    convert ${input}.${ext} -geometry ${geo}x${geo} AppIcon.appiconset/${input}_${width}x${width}@${factor}x.${ext}

}


convert_to_gemetry logo png 20 1 3
convert_to_gemetry logo png 29 1 3
convert_to_gemetry logo png 40 1 3
convert_to_gemetry logo png 60 2 3
convert_to_gemetry logo png 76 1 2
convert_to_gemetry logo png 167 1 1
convert_to_gemetry logo png 1024 1 1

convert_to_gemetry logo png 48 1 1
convert_to_gemetry logo png 55 1 1
convert_to_gemetry logo png 44 2 2
convert_to_gemetry logo png 50 2 2
convert_to_gemetry logo png 86 2 2
convert_to_gemetry logo png 98 2 2
convert_to_gemetry logo png 108 2 2
convert_to_gemetry logo png 16 1 2
convert_to_gemetry logo png 32 1 2
convert_to_gemetry logo png 128 1 2
convert_to_gemetry logo png 256 1 2
convert_to_gemetry logo png 512 1 2

cp AppIcon.appiconset/* /Users/Lolo/git/voci/Voci/Voci/Assets.xcassets/AppIcon.appiconset
