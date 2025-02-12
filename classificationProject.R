# Load necessary libraries
library(keras)
library(tfruns)
set.seed(1)
flags <- flags(
  flag_numeric("unit1", 128),
  flag_numeric("unit2", 64),
  flag_numeric("dropout_rate1", 0.2), # Add dropout rate flags
  flag_numeric("dropout_rate2", 0.2),
  flag_string("activation1", "relu"),
  flag_string("activation2", "relu"),
  flag_numeric("batch_size", 32),
  flag_numeric("learning_rate", 0.001),
  flag_numeric("epochs", 10)
)

# Define the model
model <- keras_model_sequential() %>%
  layer_dense(units = flags$unit1, activation = flags$activation1, input_shape = c(ncol(train_data_scaled))) %>%
  layer_dropout(rate = flags$dropout_rate1) %>%
  layer_dense(units = flags$unit2, activation = flags$activation2) %>%
  layer_dropout(rate = flags$dropout_rate2) %>%
  layer_dense(units = 1, activation = "sigmoid") # Assuming a binary classification task

# Compile the model
model %>% compile(
  loss = 'binary_crossentropy', # Use binary cross-entropy for binary classification
  optimizer = optimizer_rmsprop(lr = flags$learning_rate),
  metrics = 'accuracy' # Use accuracy as a metric
)

# Fit the model
history <- model %>% fit(
  as.matrix(train_data_scaled),
  labels_train,
  epochs = flags$epochs,
  batch_size = flags$batch_size,
  validation_data = list(as.matrix(val_data_scaled), labels_val)
)

