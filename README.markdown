# Stanford Named Entity Recognizer (NER) In a Box

Creates a Virtual Machine running the [Stanford Named Entity Recognizer](http://nlp.stanford.edu/software/CRF-NER.shtml) as a server, accessible on port 4465 on your host machine.

The NER Server is loaded with the 3-class Model included with the NER software package. The model applies the classes:

- Location
- Person
- Organization

## Setup

1. [Install Vagrant](https://www.vagrantup.com/downloads.html)
2. Download this repo
3. From the folder contianing this README document run:

	```
	vagrant up
	```

4. That's it!

## Usage

Once your server is running, the following command will process text:

	$ echo "Steve Jobs founded Apple Computer on April 1, 1976" | nc localhost 4465
	<PERSON>Steve Jobs</PERSON> founded <ORGANIZATION>Apple Computer</ORGANIZATION> on April 1, 1976

## Details

Here are the current specifications for this server:

- NER Version: `3.6.0`
- Total memory assigned to this VM: `1536 MB`
- Memory assigned to the NER application: `1 GB`
- Port on which the NER server is listening: `4465`
- Location of the server logs on the VM: `/var/log/upstart/stanford-ner.log`
- Location of the model that is loaded by the server: `/srv/stanford-ner/english.all.3class.distsim.crf.ser.gz`
