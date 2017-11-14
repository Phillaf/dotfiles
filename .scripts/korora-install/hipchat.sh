sudo bash -c 'cat > /etc/yum.repos.d/hipchat.repo << EOF_hipchat
[atlassian-hipchat]
name=Atlassian Hipchat
baseurl=https://atlassian.artifactoryonline.com/atlassian/hipchat-yum-client/
enabled=1
gpgcheck=0
EOF_hipchat'

sudo dnf install hipchat4
