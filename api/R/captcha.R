library(magrittr)
library(decryptr)

if (is.null(tensorflow::tf_version())) {
  tensorflow::install_tensorflow()
  keras::install_keras()
}

reticulate::py_available(TRUE)
suppressMessages(suppressWarnings({
  rfb_model <- decryptrModels::read_model('rfb')
  trt_model <- decryptrModels::read_model('trt')
  tjmg_model <- decryptrModels::read_model('tjmg')
  esaj_model <- decryptrModels::read_model('esaj')
}))

#* @post /predict_tjmg
predict_tjmg <- function(img) {
  img_decoded <- base64enc::base64decode(img)
  predict(tjmg_model, newdata = decryptr::prepare(img_decoded))
}
