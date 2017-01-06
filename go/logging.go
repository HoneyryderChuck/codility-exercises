package main

import (
  "os"
  "github.com/op/go-logging"
)

var log = logging.MustGetLogger("example")

var format = logging.MustStringFormatter(
  `%{color}%{time:15:04:05.000} %{shortfunc} ▶ %{level:.4s} %{id:03x}%{color:reset} %{message}`,
)

func main() {
  backend1 := logging.NewLogBackend(os.Stderr, "", 0)
  backend1Formatter := logging.NewBackendFormatter(backend1, format)
  logging.SetBackend(backend1, backend1Formatter)

  log.Debugf("debug %s", "secret")
  log.Info("info")
  log.Notice("notice")
  log.Warning("warning")
  log.Error("err")
  log.Critical("crit")
}
