FROM dockerfile/ruby

RUN gem install compass

VOLUME ["/input", "/output"]

WORKDIR /input

CMD compass compile --sass-dir /input/ --css-dir /output/
