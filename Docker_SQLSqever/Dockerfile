FROM alpine:latest

# Instalar SQL Server
RUN apk add --no-cache \
    gnupg \
    libstdc++ \
    openssl \
    curl \
    libc6-compat \
    && export GNUPGHOME="$(mktemp -d)" \
    && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --import - \
    && curl https://packages.microsoft.com/config/alpine/3.12/prod.list > /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
    msodbcsql17 \
    mssql-tools \
    unixodbc-dev \
    && apk del gnupg \
    && rm -rf "$GNUPGHOME"
# Exponer el puerto de SQL Server
EXPOSE 1433

# Establecer el comando de inicio
CMD ["/opt/mssql/bin/sqlservr"]
