FROM fluent/fluentd:latest-onbuild

RUN fluent-gem install fluent-plugin-slack

# USER fluent
# WORKDIR /home/fluent
# ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH
# RUN gem install fluent-plugin-secure-forward
# EXPOSE 24284
# CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
