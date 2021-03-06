FROM alpine:3.9.5 as base

RUN apk add --no-cache make cmake g++ git

WORKDIR /Catch2
RUN git clone https://github.com/catchorg/Catch2.git . \
    && cmake -Bbuild -H. -DBUILD_TESTING=OFF \
    && cmake --build build/ --target install \
    && cd .. && rm Catch2 -rf

COPY . /app

WORKDIR /app
RUN cmake --DGENERATE_DOCS=OFF --DENABLE_TESTING=OFF . && cmake --build .

CMD [ "ctest", "." ]
