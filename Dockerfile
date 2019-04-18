FROM fpco/stack-build-small:lts-13.16

RUN stack install --resolver lts-13.16 \
        hlint

RUN stack install --resolver lts-13.16 \
        cabal-install \
        hspec \
        hspec-discover \
        QuickCheck

RUN apt update && \
    apt install \
        libpq5
