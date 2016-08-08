sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y oracle-java8-installer unzip python-software-properties

mkdir -p /vagrant/installers
sudo mkdir -p /srv/stanford-ner

if [ ! -f "/vagrant/installers/${NER_VERSION}.zip" ]; then
  cd /vagrant/installers
  wget --progress=bar:force "http://nlp.stanford.edu/software/${NER_VERSION}.zip"
  unzip stanford-ner-2015-04-20.zip
fi

cd "/vagrant/installers/${NER_VERSION}"
cp stanford-ner.jar classifiers/english.all.3class.distsim.crf.ser.gz /srv/stanford-ner/

sudo cp /vagrant/stanford-ner.conf /etc/init
sudo stop stanford-ner || true
sudo start stanford-ner