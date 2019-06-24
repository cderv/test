
.PHONY : all html clean deploy

all : html

html :
	if [ ! -d docs ];then mkdir docs;fi
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::gitbook')"

clean :
	rm -rf docs/* rm book/*.rds
