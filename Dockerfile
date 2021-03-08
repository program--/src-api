FROM rstudio/plumber
MAINTAINER Justin Singh-Mohudpur <justinsingh-mohudpur@ucsb.edu>
COPY . /app/src-api
RUN R -e "install.packages('gbm', dependencies = TRUE)"
EXPOSE 32452
WORKDIR /app/src-api/
CMD ["R/plumber.R"]