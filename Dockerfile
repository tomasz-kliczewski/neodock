FROM  python:alpine3.20

RUN apk update

RUN apk add musl-dev

# ___NODEJS

RUN apk add nodejs npm

RUN apk add git lazygit neovim ripgrep fd  alpine-sdk

# ____NEOVIM_CONFIG_REPO
RUN git clone https://kliczewt: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@github.com/tomasz-kliczewski/neodock.git ~/.config/nvim
RUN git checkout pytohn_lsp

#EXPOSE 5000 
WORKDIR /home
