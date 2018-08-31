FROM rocker/tidyverse

RUn R -e "install.packages('pacman')"

RUN R -e "pacman::p_load(shiny,googleAnalyticsR )"

COPY gauth_*.tar.gz  /gauth.tar.gz

RUN R -e "install.packages('gauth.tar.gz', repos = NULL, type = 'source')"

COPY Rprofile.site /usr/local/lib/R/etc

EXPOSE 3838
CMD ["R", "-e gauth::run_app()"]

