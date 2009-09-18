html:
	for f in *.docbook; do xsltproc -o $${f%.docbook}.html lesson.xsl $$f; done
