FROM jekyll/jekyll
RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/ && \
    # bundler config mirror.https://rubygems.org https://gems.ruby-china.org && \
    # sed -i.old -e 's/rubygems/gems.ruby-china/' /usr/gem/gems/jekyll-3.7.3/lib/jekyll/commands/new.rb && \
    mkdir -p /home/jekyll/.bundle && \
    chown jekyll:jekyll /home/jekyll/.bundle && \
    echo "---" > /home/jekyll/.bundle/config && \
    echo "BUNDLE_MIRROR__HTTPS://RUBYGEMS__ORG/: \"https://gems.ruby-china.org\"" >>/home/jekyll/.bundle/config && \
    chown jekyll:jekyll /home/jekyll/.bundle/config && \
    echo fin enjoy
