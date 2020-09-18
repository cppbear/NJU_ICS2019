#!/bin/bash
if [ ! -d "~/.pa-nemu/" ]; then
	mkdir ~/.pa-nemu/
fi
if [ ! -d "~/.pa-nemu/emotion/" ]; then
	mkdir ~/.pa-nemu/emotion/
fi 
if [ ! -d "./scripts/emotion/" ]; then
	mkdir ./scripts/emotion/
fi

#cd .pa-nemu/emotion/

T=$[$(date +%s%N)/1000000]
time=$(date "+%Y-%m-%d-%H:%M:%S")
 
dialog --nocancel --title "你当前状态和情绪如何?" --menu "\n鼠标或方向键选择，点击OK或回车确定, 请认真做答, 若不想做可以选择跳过, 谢谢参与！" 20 30 10 1 "跳过" 2 "能应对挑战 比较投入" 3 "遇到点问题 有些困惑" 4 "问题卡住了 感到沮丧" 5 "学不下去了 觉得无趣"  2>_m.txt

M=$(cat _m.txt)

#一小时内免打扰
if [ $M = "1" ]; then
	dialog --nocancel --menu "是否希望一小时内免打扰?" 15 20 10  1 "YES" 2 "NO" 2>_m.txt
	D=$(cat _m.txt)
	echo $D" "$T > ~/.pa-nemu/emotion/Disturb.txt

else
	case $M in
		"2")
			M="flow"
			;;
		"3")
			M="confused"
			;;
		"4")
			M="furstrated"
			;;
		"5")
			M="bored"
			;;
	esac
	echo $T" "${M}" "$time >> ./scripts/emotion/${T}_emotion.txt
	echo $T > ~/.pa-nemu/emotion/DoNotFreq.txt
fi

rm -f _m.txt
