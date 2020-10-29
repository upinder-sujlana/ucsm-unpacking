```
This is a quick script I wrote while having to go through multiple UCSM tech-support files.

The intention is to extract the TAR file, followed by extracting the child tar.gz files for the
fabric interconnect A and B into their own folders.

e.g.

sjs@sjs-virtual-machine:~/ucsm-upinder$ ls
20201028174052_UCSM.tar  unpacking_ucsm.sh
sjs@sjs-virtual-machine:~/ucsm-upinder$ ./unpacking_ucsm.sh
Currently the script runs only on one UCSM bundle in the folder.
Found one. Proceeding
20201028174052_UCSM/
20201028174052_UCSM/1.expected
20201028174052_UCSM/UCSM_A_TechSupport.tar.gz
20201028174052_UCSM/UCSM_B_TechSupport.tar.gz.done
20201028174052_UCSM/UCSM_A_TechSupport.tar.gz.done
20201028174052_UCSM/UCSM_B_TechSupport.tar.gz
.......................................
................................
sjs@sjs-virtual-machine:~/ucsm-upinder$ ls
20201028174052_UCSM  20201028174052_UCSM.tar  unpacking_ucsm.sh
sjs@sjs-virtual-machine:~/ucsm-upinder$ cd *UCSM
sjs@sjs-virtual-machine:~/ucsm-upinder/20201028174052_UCSM$ ls
UCSM_A_TechSupport  UCSM_A_TechSupport.tar.gz  UCSM_B_TechSupport  UCSM_B_TechSupport.tar.gz
sjs@sjs-virtual-machine:~/ucsm-upinder/20201028174052_UCSM$ ls UCSM_A_TechSupport
boot_logs  dhcpd.leases    install_logs            iptables.out  ls_l.out         ns-tap-vmedia-mapping   sam_bootstrap_state  sam_process_state  sw_kernel_trace_log  syslogd_logs  ts_stats
connector  dmesg.out       intf-extip-mapping      isan          netstat_anp.out  ns-vmedia-port-mapping  sam_cluster_state    spare              sw_techsupportinfo   tftpd_logs    var
df_a.out   ifconfig_a.out  intf-extip-mapping.tmp  log_export    ns-port-mapping  opt                     sam_processes        ssh_files          sw_trace_logs        tmp
sjs@sjs-virtual-machine:~/ucsm-upinder/20201028174052_UCSM$


```
