FROM fpco/stack-build-small:lts-13.17

RUN stack install --resolver lts-13.17 \
        hlint

RUN stack install --resolver lts-13.17 \
        cabal-install \
        hspec \
        hspec-discover \
        QuickCheck

RUN apt update && \
    apt install -y \
        postgresql \
        libpq-dev
