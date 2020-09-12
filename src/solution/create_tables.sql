
CREATE TABLE cells.models (
  model_id INT NOT NULL,
  model_name VARCHAR(20) NOT NULL,
  open_circuit_voltage DECIMAL(13,2),
  energy DECIMAL(13,2),
  resistance DECIMAL(13,2),
  capacity DECIMAL(13,2),
  PRIMARY KEY (model_id),
  FOREIGN KEY (model_name)
      REFERENCES shipments (model_name),
  FOREIGN KEY (model_name2)
      REFERENCES plans (model_name)
);

CREATE TABLE cells.shipments (
  received_date date,
  model_name VARCHAR(20) NOT NULL,
  cell_id VARCHAR(20) NOT NULL,
  PRIMARY KEY (cell_id),
  FOREIGN KEY (Key_number3)
      REFERENCES models (model_name),
  FOREIGN KEY (Key_number4)
      REFERENCES plans (model_name,cell_id)
);

CREATE TABLE cells.plans (
  plan VARCHAR(20),
  cell_id VARCHAR(20) NOT NULL,
  model_name VARCHAR(20) NOT NULL,
  current DECIMAL(13,2),
  voltage DECIMAL(13,2),
  epoch LONG,
  PRIMARY KEY (cell_id,model_name),
  FOREIGN KEY (Key_number5)
      REFERENCES shipments (model_name,cell_id),
  FOREIGN KEY (Key_number6)
      REFERENCES models (model_name)
);

---Make the joins faster---

CREATE INDEX  idx_plans_1
ON cells.plans(cell_id,model_name);

CREATE INDEX  idx_plans_2
ON cells.plans(model_name);

CREATE INDEX  idx_shipments_1
ON cells.shipments(cell_id,model_name);

CREATE INDEX  idx_shipments_2
ON cells.shipments(model_name);

CREATE INDEX idx_models_2
ON cells.shipments(cell_id,model_name);
