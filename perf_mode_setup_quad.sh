#!/bin/bash
adb shell stop mpdecision
adb shell stop thermald
adb shell stop thermal-engine
adb shell stop sensors
adb shell "echo 2 > /proc/cpu/alignment"
adb shell "echo 0 > /proc/sys/kernel/kptr_restrict"
adb shell "echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"
adb shell "echo 1 > /sys/devices/system/cpu/cpu1/online"
adb shell "echo 1 > /sys/devices/system/cpu/cpu2/online"
adb shell "echo 1 > /sys/devices/system/cpu/cpu3/online"
adb shell "echo performance > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor"
adb shell "echo performance > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor"
adb shell "echo performance > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor"
adb shell mount -t debugfs none /d
adb shell "echo 22 > /sys/kernel/debug/msm-bus-dbg/shell-client/mas"
adb shell "echo 512 > /sys/kernel/debug/msm-bus-dbg/shell-client/slv"
adb shell "echo 0 > /sys/kernel/debug/msm-bus-dbg/shell-client/ab"
adb shell "echo 3080000000 > /sys/kernel/debug/msm-bus-dbg/shell-client/ib"
adb shell "echo 1 > /sys/kernel/debug/msm-bus-dbg/shell-client/update_request"
adb shell cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
adb shell cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
adb shell cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
adb shell cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
adb shell cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq
adb shell cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_cur_freq
adb shell cat /sys/devices/system/cpu/cpu2/cpufreq/cpuinfo_cur_freq
adb shell cat /sys/devices/system/cpu/cpu3/cpufreq/cpuinfo_cur_freq
adb shell cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
adb shell cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
adb shell cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
adb shell cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
adb shell cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
adb shell cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
adb shell cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
adb shell cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
adb shell cat proc/meminfo   | egrep "MemTotal|MemFree"
adb shell getprop | egrep "composition|dalvik.vm.checkjni|thermald|mpdecision"
adb shell mount -t debugfs nodev /sys/kernel/debug
echo "krait0_m_clk"
adb shell cat /sys/kernel/debug/clk/krait0_m_clk/measure
echo "krait1_m_clk"
adb shell cat /sys/kernel/debug/clk/krait1_m_clk/measure
echo "krait2_m_clk"
adb shell cat /sys/kernel/debug/clk/krait3_m_clk/measure
echo "krait3_m_clk"
adb shell cat /sys/kernel/debug/clk/krait4_m_clk/measure
echo "l2_m_clk"
adb shell cat /sys/kernel/debug/clk/l2_m_clk/measure
echo "afab_clk"
adb shell cat /sys/kernel/debug/clk/afab_clk/measure
echo "ebi1_clk"
adb shell cat /sys/kernel/debug/clk/ebi1_clk/measure
echo "mmfab_clk"
adb shell cat /sys/kernel/debug/clk/mmfab_clk/measure
