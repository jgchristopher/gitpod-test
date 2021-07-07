FROM gitpod/workspace-postgres

USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

# Install Erlang, Elixir, Hex and Rebar
RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb \
    && sudo dpkg -i erlang-solutions_2.0_all.deb \
    && sudo apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
    && sudo apt-get install esl-erlang -y \
    && sudo apt-get install elixir -y \
    && sudo apt-get install inotify-tools -y \
    && mix local.hex --force \
    && mix local.rebar --force \
    && sudo apt-get clean && sudo rm -rf /var/cache/apt/* && sudo rm -rf /var/lib/apt/lists/* && sudo rm -rf /tmp/*