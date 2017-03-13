FROM alpine

# Configure log-courier
ADD .bin/log-courier /bin/
ADD log-courier.conf /etc/log-courier/log-courier.conf
CMD log-courier -config=/etc/log-courier/log-courier.conf
