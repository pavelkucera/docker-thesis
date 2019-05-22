FROM fpco/stack-build-small:lts-13.17

RUN stack install --resolver lts-13.17 \
        hlint

RUN stack install --resolver lts-13.17 \
        cabal-install \
        megaparsec \
        hspec \
        hspec-discover \
        hspec-megaparsec \
        QuickCheck \
        quickcheck-instances

RUN apt update && \
    apt install -y \
        postgresql \
        libpq-dev

RUN stack install --resolver lts-13.17 \
        postgresql-simple
