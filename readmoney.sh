function readmoney() {

    if [[ "$1" == "" ]]; then
        echo "금액을 입력해주세요."
        return
    fi

    digit=$1
    reversed_all=$(eval echo ${digit} | rev)

    reversed_quarter1=${reversed_all:0:4}
    reversed_quarter2=${reversed_all:4:4}
    reversed_quarter3=${reversed_all:8:4}
    reversed_quarter4=${reversed_all:12:4}
    reversed_quarter5=${reversed_all:16}

    quarter1=$(eval echo ${reversed_quarter1} | rev)
    quarter2=$(eval echo ${reversed_quarter2} | rev)
    quarter3=$(eval echo ${reversed_quarter3} | rev)
    quarter4=$(eval echo ${reversed_quarter4} | rev)
    quarter5=$(eval echo ${reversed_quarter5} | rev)

    [[ -z ${quarter5} || ${quarter5} == "0000" ]] && quarter5val="" || quarter5val="${quarter5}경 "
    [[ -z ${quarter4} || ${quarter4} == "0000" ]] && quarter4val="" || quarter4val="${quarter4}조 "
    [[ -z ${quarter3} || ${quarter3} == "0000" ]] && quarter3val="" || quarter3val="${quarter3}억 "
    [[ -z ${quarter2} || ${quarter2} == "0000" ]] && quarter2val="" || quarter2val="${quarter2}만 "
    [[ -z ${quarter1} || ${quarter1} == "0000" ]] && quarter1val="" || quarter1val="${quarter1}"

    echo "${quarter5val}${quarter4val}${quarter3val}${quarter2val}${quarter1val}원"
}

