%.gexf:
	$(pangraph) --type gexf $(OPTIONS) -o $@

%.gml:
	$(pangraph) --type gml $(OPTIONS) -o $@
	sed -i '/label/d' $@

%.graphml:
	$(pangraph) --type graphml $(OPTIONS) -o $@

%.net:
	$(pangraph) --type pajek $(OPTIONS) -o $@

