FROM golang AS build
WORKDIR /go
COPY fullcycle.go .
RUN go build fullcycle.go

FROM scratch
COPY --from=build /go/fullcycle /go/fullcycle
CMD [ "/go/fullcycle" ]