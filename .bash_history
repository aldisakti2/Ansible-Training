exit
ssh-keygen -t rsa
clear
ssh-copy-id -i ~/.ssh/id_rsa.pub aldialvayadi2@pod-aldialvayadi2-controller
clear
ssh-copy-id -i ~/.ssh/id_rsa.pub aldialvayadi2@pod-aldialvayadi2-managed1
clear
echo "(yes:Skills39)" | ssh-copy-id -i ~/.ssh/id_rsa.pub aldialvayadi2@pod-aldialvayadi2-managed2
ssh-copy-id -i ~/.ssh/id_rsa.pub aldialvayadi2@pod-aldialvayadi2-managed2
clear
ssh aldialvayadi2@pod-aldialvayadi2-controller "whoami; hostname"
ssh aldialvayadi2@pod-aldialvayadi2-managed1 "whoami; hostname"
ssh aldialvayadi2@pod-aldialvayadi2-managed2 "whoami; hostname"
clear
sudo apt update -y ; sudo apt upgrade -y
sudo apt-get update --fix-missing
sudo apt update -y ; sudo apt upgrade -y
sudo apt-get --fix-missing
clear
sudo apt install python3 python3-venv
clear
python3 -m venv python-venv
source python-venv/bin/activate
clear
pip install -U pip
clear
pip install ansible==
clear
pip install ansible==2.9.13
clear
ansible --version
clear
sudo mkdir -p /etc/ansible
sudo vi /etc/ansible/hosts
clear
ansible all --list-hosts
ansible ungrouped --list-hosts
clear
ansible webservers --list-hosts
clear
ansible all -m ping
clear
ansbile all -m command -a "hostname"
clear
ansible all -m command -a "hostname"
ansible pod-aldialvayadi2-managed1 -m setup
clear
ansible localhost -m command -a 'id'
ansible localhost -u aldialvayadi2 -m command -a 'id'
ansible localhost -u root -m command -a 'id'
clear
ansible localhost --become -u aldialvayadi2 -m copy -a "content='Executed by Ansible\n' dest=/etc/motd"
clear
ansible localhost -u aldialvayadi2 -m command -a 'cat /etc/motd'
clear
ssh pod-aldialvayadi2-controller
ls -al
vim /run/motd.dynamic 
clear
vim /etc/issue.net
clear
history | grep venv
history
clear
source python-venv/bin/activate
clear
ssh pod-aldialvayadi2-controller
clear
cd ~/
mkdir -p deploy-review
cd deploy-review/
vi ansible.cfg
clear
vi inventory
clear
ansible all -m command -a 'id'
clear
ansible all -m copy -a "content='This server is managed by Ansible. \n' dest=/etc/motd" --become
ansible all -m command -a 'cat /etc/motd'
ansible --help
ls -al
cd ~
ls
ls -al
sudo lsblk
clear
ansible all --become -m copy -a "content='This server is managed by Ansible. \n' dest=/etc/motd"
clear
ansible all --become -m copy -a "content='This server is managed by Ansible. \n' dest=/etc/motd"
clear
cd deploy-review/
clear
history
ansible all -m command -a 'cat /etc/motd'
clear
cd
clear
ssh pod-aldialvayadi2-managed1 "whoami; cat /etc/motd"
ssh pod-aldialvayadi2-managed2 "whoami; cat /etc/motd"
clear
cd ~/
mkdir -p playbook-basic/files
cd playbook-basic
clear
vi ansible.cfg
clear
vi inventory
clear
echo "This is a test page." > files/index.html
clear
vi site.yml
clear
ansible-playbook site.yml
cat site.yml 
ls -al
cat ansible.cfg 
cat inventory 
clear
curl pod-aldialvayadi2-managed1
clear
cat files/index.html 
clear
vim site.yml 
clear
ansible-playbook site.yml 
ping pod-aldialvayadi2-managed1
cat inventory 
cat ansible.cfg 
vim ansible.cfg
clear
ansible-playbook site.yml 
clear
cd
clear
curl pod-aldialvayadi2-managed1
cd ~
clear
mkdir data-variables/
cd data-variables/
clear
vi ansible.cfg
clear
vi inventory
clear
vi playbook.yml
clear
ansible-playbook --syntax-check playbook.yml 
clear
ansible-playbook playbook.yml 
clear
ce
cd
clear
curl pod-aldialvayadi2-managed2
clear
curl pod-aldialvayadi2-managed2
clear
mkdir jinja2-template
cd jinja2-template/
clear
vi inventory
clear
vi site.yml
clear
vi aldialvayadi2.html.j2
clear
vi site.yml
clear
vi aldi.html.j2
clear
ansible-playbook site.yml 
clear
curl pod-aldialvayadi2-managed1/aldi.html
cd
clear
mkdir quiz-ansible1
clear
cd quiz-ansible1/
clear
vi inventory
clear
vi site.yml
ls -al ../playbook-basic/
cp ../playbook-basic/ansible.cfg .
cat ansible.cfg 
cat ../playbook-basic/inventory 
cat inventory 
clear
ansible-playbook --site-check site.yml 
history | grep check
ansible-playbook --syntax-check site.yml 
vim site.yml 
clear
ansible-playbook --syntax-check site.yml 
clear
mv site.yml database.yml
clear
ansible-playbook --help
clear
ansible-playbook --check database.yml 
clear
ansible-playbook database.yml 
vim database.yml 
clear
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
ansible-playbook -C database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
clear
vim database.yml 
ansible-playbook --syntax-check database.yml 
clear
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
vim database.yml 
ansible-playbook database.yml 
sudo poweroff
clear
history | grep source
soucre python-venv/bin/activate
source python-venv/bin/activate
clear
cd ~/
mkdir role-create
cd role-create/
clear
vi ansible.cfg
clear
vi inventory
clear
mkdir roles
cd roles/
clear
ansible-galaxy init myvhost
rm -rvf myvhost/{defaults,vars,tests}
clear
cd ..
mkdir -p roles/myvhost/files/html-1
mkdir -p roles/myvhost/files/html-2
echo 'simple index vhost1 : aldi-pod-aldialvayadi2' > roles/myvhost/files/html-1/index.html
echo 'simple index vhost1 : aldi-pod-aldialvayadi2' > roles/myvhost/files/html-2/index.html
clear
vi roles/myvhost/tasks/main.yml
clear
vi roles/myvhost/handlers/main.yml 
vi roles/myvhost/templates/vhost-1.conf.j2
vi roles/myvhost/templates/vhost-2.conf.j2
vi use-vhost-role.yml
clear
ansible-playbook use-vhost-role.yml --syntax-check
clear
ansible-playbook use-vhost-role.yml 
clear
cd
clear
curl -H "Host: vhost-1.pod-aldialvayadi2-managed1" http://pod-aldialvayadi2-managed1
curl -H "Host: vhost-2.pod-aldialvayadi2-managed1" http://pod-aldialvayadi2-managed1
curl -H "Host: vhost-1.pod-aldialvayadi2-managed2" http://pod-aldialvayadi2-managed2
curl -H "Host: vhost-2.pod-aldialvayadi2-managed2" http://pod-aldialvayadi2-managed2
echo 'simple index vhost2 : aldi-pod-aldialvayadi2' > roles/myvhost/files/html-2/index.html
cd role-create/
echo 'simple index vhost2 : aldi-pod-aldialvayadi2' > roles/myvhost/files/html-2/index.html
clear
ansible-playbook use-vhost-role.yml 
clear
cd
clear
curl -H "Host: vhost-1.pod-aldialvayadi2-managed1" http://pod-aldialvayadi2-managed1
curl -H "Host: vhost-2.pod-aldialvayadi2-managed1" http://pod-aldialvayadi2-managed1
curl -H "Host: vhost-1.pod-aldialvayadi2-managed2" http://pod-aldialvayadi2-managed2
curl -H "Host: vhost-2.pod-aldialvayadi2-managed2" http://pod-aldialvayadi2-managed2
clear
mkdir data-secret
cd data-secret/
clear
cp ../role-create/ansible.cfg .
ls
clear
cat ansible.cfg 
clear
vi inventory
vi secret.yml
ansible-vault encrypt secret.yml 
clear
vi create_users.yml
clear
ansible-playbook --syntax-check --ask-vault-pass create_users.yml 
clear
echo 'adinusa88' > vault-pass
clear
chmod 600 vault-pass 
clear
ansible-playbook --vault-password-file=vault-pass create_users.yml 
cat inventory 
cat ansible.cfg 
vi inventory 
clear
cat create_users.yml 
clear
ansible-playbook --vault-password-file=vault-pass create_users.yml
ping 10.10.10.20
ping pod-aldialvayadi2-managed1
clear
ansible-playbook --vault-password-file=vault-pass create_users.yml
cat ../role-create/inventory 
cat ../role-create/use-vhost-role.yml 
clear
cat create_users.yml 
cat ../role-create/use-vhost-role.yml 
clear
cat secret.yml 
clear
ansible-playbook --syntax-check --ask-vault-pass create_users.yml
cat ../quiz-ansible1/inventory 
cat ../quiz-ansible1/database.yml 
clear
cat vault-pass 
cat create_users.yml 
clear
vi create_users.yml 
cat inventory 
vi create_users.yml 
clear
ansible-playbook --syntax-check --ask-vault-pass create_users.yml
clear
ansible-playbook --vault-password-file=vault-pass create_users.yml
clear
cd
clear
ssh ansibleuser1@pod-aldialvayadi2-managed1
clear
mkdir conditional-loop
cd conditional-loop/
clear
vi ansible.cfg
vi inventory
clear
vi database_setup.yml
vi Ubuntu_database_tasks.yml
vi database_user_tasks.yml
mkdir group_vars
vi group_vars/database_servers.yml
vi group_vars/all.yml
clear
ansible-playbook --syntax-check database_setup.yml 
clear
ansible-playbook database_setup.yml 
clear
#ssh pod-aldialvayadi2-managed2 "sudo mysql -u root -e 'SELECT user FROM user;' mysql"
cd
clear
ssh pod-aldialvayadi2-managed2 "sudo mysql -u root -e 'SELECT user FROM user;' mysql"
clear
cd conditional-loop/
clear
ansible-playbook database_setup.yml 
vi database_setup.yml 
ansible-playbook database_setup.yml 
ssh pod-aldialvayadi2-managed2 "sudo mysql -u root -e 'SELECT user FROM user;' mysql"
clear
ssh pod-aldialvayadi2-managed2 "sudo mysql -u root -e 'SELECT user FROM user;' mysql"
clear
cd
clear
mkdir quiz-ansible2
clear
cd quiz-ansible2
clear
cat ../conditional-loop/database_user_tasks.yml 
clear
vi user_pod-aldialvayadi2-managed1.yml
clear
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
cat ../quiz-ansible1/database.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
clear
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
clear
vi user_pod-aldialvayadi2-managed1.yml
clear
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
clear
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
clear
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
clear
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
vi user_pod-aldialvayadi2-managed1.yml
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed1.yml 
ansible-playbook user_pod-aldialvayadi2-managed1.yml 
clear
cp user_pod-aldialvayadi2-managed1.yml user_pod-aldialvayadi2-managed2.yml 
vi user_pod-aldialvayadi2-managed2.yml 
clear
ansible-playbook --syntax-check user_pod-aldialvayadi2-managed2.yml 
ansible-playbook user_pod-aldialvayadi2-managed2.yml 
clear
cd
clear
ssh pod-aldialvayadi2-managed1 -l dev1
clear
ssh pod-aldialvayadi2-managed1 -l ops1
clear
RAND_NUMBER=$(python -c "import random; print(random.randrange(51,100))")
ssh pod-aldialvayadi2-managed2 -l dev${RAND_NUMBER}
clear
RAND_NUMBER=$(python -c "import random; print(random.randrange(51,100))")
ssh pod-aldialvayadi2-managed2 -l ops${RAND_NUMBER}
clear
mkdir comprehensive-labs
cd comprehensive-labs/
clear
ls -al
clear
mkdir vars
cd vars
cd ..
rmdir vars
clear
vim docker-playbook.yml
clear
vim docker-playbook.yml
clear
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml
cat ../quiz-ansible2/user_pod-aldialvayadi2-managed1.yml 
vim docker-playbook.yml
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
cat ../quiz-ansible1/database.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
cat ../quiz-ansible1/database.yml 
vim docker-playbook.yml 
cat ../quiz-ansible1/database.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
cat ../quiz-ansible1/database.yml | grep host
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
clea
clear
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
clear
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
clear
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
clear
ansible-playbook --syntax-check docker-playbook.yml 
clear
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
clear
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
clear
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
cat ../quiz-ansible2/user_pod-aldialvayadi2-managed
cat ../quiz-ansible2/user_pod-aldialvayadi2-managed2.yml 
clear
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
clear
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
cat ../quiz-ansible2/user_pod-aldialvayadi2-managed2
cat ../quiz-ansible2/user_pod-aldialvayadi2-managed2.yml 
cat ../quiz-ansible1/database.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook docker-playbook.yml 
ping 8.8.8.8
vim docker-playbook.yml 
clear
ansible-playbook --syntax-check docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook --syntax-check docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
clear
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
clear
ansible-playbook docker-playbook.yml 
clear
vim docker-playbook.yml 
clear
ansible-playbook --syntax-check docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
ansible-playbook docker-playbook.yml 
vim docker-playbook.yml 
clear
source python-venv/bin/activate
clear
ssh pod-aldialvayadi2-managed2 docker ps
clear
ssh pod-aldialvayadi2-managed2 docker ps
clear
ssh pod-aldialvayadi2-managed2 docker ps
ls -al
ls -al comprehensive-labs/
cd comprehensive-labs/
vi docker-playbook.yml 
clear
cd
clear
ls -al
ls role-create/
ls data-secret/
clear
ls -al
clear
git init
git remote add origin https://github.com/aldisakti2/Ansible-Training.git
git add .
git commit -m "First commit"
git config --global user.email "aldialvayadi2@gmail.com"
git commit -m "Commit File"
git config --global user.name "aldisakti2"
git commit -m "Commit File"
exit
