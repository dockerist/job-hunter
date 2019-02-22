FROM loumaris/ruby-2.2.6-fullstack
LABEL maintainer="cheimke@loumaris.com"

WORKDIR /app

RUN apt update && apt install -y libqtwebkit-dev libqtwebkit4 && apt-get autoremove -y

ADD Gemfile* /app/

RUN bundle install --jobs 20

ADD . /app/

RUN rake assets:precompile
RUN rake db:setup

EXPOSE 3000

CMD [ "rails", "server", "-b0.0.0.0" ]
