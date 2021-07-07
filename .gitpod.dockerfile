FROM gitpod/workspace-postgres

USER root

ENV DEBIAN_FRONTEND noninteractive

# Install Erlang, Elixir, Hex and Rebar
RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb \
    && sudo dpkg -i erlang-solutions_2.0_all.deb \
    && sudo apt-get update \
    && sudo apt-get install esl-erlang -y \
    && sudo apt-get install elixir -y \
    && apt-get install inotify-tools -y \
    && mix local.hex --force \
    && mix local.rebar --force \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*