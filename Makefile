
.PHONY : all html clean deploy

all : html

html :
	mkdir docs
	cd book; \
	Rscript -e "bookdown::render_book('.', 'bookdown::gitbook')"

clean :
	rm -rf docs/* rm book/*.rds
