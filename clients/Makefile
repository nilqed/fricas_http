# client/jupyter

.PHONY: info

info:
		jupyter --version
		jupyter --paths
		@echo "---"
		@echo "Install : sudo make install.jupyter"
		@echo "Remove  : sudo make remove.jupyter"
		@echo "---" 


install.jupyter:
		jupyter kernelspec list
		jupyter kernelspec install ./jupyter --name fricaskernel --user
		jupyter kernelspec list
		cp ./jupyter/fricas_notebook /usr/local/bin

remove.jupyter:
		jupyter kernelspec list
		jupyter kernelspec remove fricaskernel
		jupyter kernelspec list
		rm --verbose /usr/local/bin/fricas_notebook


