html:
	for f in *.xml; do xsltproc -o $${f%.xml}.html lesson.xsl $$f; done
