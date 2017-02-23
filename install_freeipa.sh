hostname_new=`hostname -s`."testrelm.test";echo $hostname_new > /etc/hostname;hostname $hostname_new;ip_add=`ip addr|grep "global"|cut -d " " -f6|cut -d "/" -f1|head -n 1`;echo "$ip_add $hostname_new" >> /etc/hosts;cat /etc/hosts && git clone https://github.com/freeipa/freeipa
&& cd freeipa && dnf builddep -y --spec freeipa.spec.in && dnf install -y java  jsl rpm-build && dnf -y copr enable @freeipa/freeipa-master && pip install pylint &&
./makerpms.sh && dnf install dist/rpms/*.rpm && mkdir -p ~/.ipa/alias/ && echo Secret123 > ~/.ipa/alias/.pwd && chcon system_u:object_r:ipa_otpd_exec_t:s0 /usr/libexec/ipa/ipa-otpd


ipa-server-install --ip-address $(ip addr|grep "global"|cut -d " " -f6|cut -d "/" -f1|head -n 1) -r testrelm.test -p 'Secret123' -a 'Secret123' --setup-dns -U
echo Secret123 | kinit admin
python lite-server.py
