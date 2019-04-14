FROM fpco/stack-build-small:lts-13.16 AS build
RUN stack install hlint-2


FROM fpco/stack-build-small:lts-13.16
COPY --from=build /root/.local/bin/hlint /root/.local/bin/hlint
COPY --from=build /root/.stack/snapshots/x86_64-linux/lts-13.16/8.6.4/share/x86_64-linux-ghc-8.6.4/hlint-2.1.11/hlint.yaml \
                  /root/.stack/snapshots/x86_64-linux/lts-13.16/8.6.4/share/x86_64-linux-ghc-8.6.4/hlint-2.1.11/hlint.yaml
