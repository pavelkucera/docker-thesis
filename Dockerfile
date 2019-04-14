FROM fpco/stack-build-small:lts-13.16 AS build
RUN stack install hlint


FROM fpco/stack-build-small:lts-13.16
COPY --from=build /root/.local/bin/hlint /root/.local/bin/hlint