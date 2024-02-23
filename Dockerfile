FROM odoo:16.0 as build

ENV SHELL /bin/bash

RUN /usr/bin/python3 -m pip install debugpy

COPY ./entrypoint-debug.sh /

USER odoo

ENTRYPOINT [ "/entrypoint-debug.sh" ]

CMD [ "odoo" ]