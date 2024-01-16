FROM odoo:14.0 as build

ENV SHELL /bin/bash

RUN python3 -m pip install debugpy

COPY ./entrypoint-debug.sh /

USER odoo

ENTRYPOINT [ "/entrypoint-debug.sh" ]

CMD [ "odoo" ]

