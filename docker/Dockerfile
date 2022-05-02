FROM elixir:reza AS build

COPY code/ .
RUN asdf install

RUN mix deps.get

RUN mix ecto.create
RUN mix ecto.migrate

ENTRYPOINT [ "iex" ]
CMD [ "-S", "mix", "phx.server"]