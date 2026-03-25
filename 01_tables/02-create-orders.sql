CREATE TABLE orders (
    id INT PRIMARY KEY,
    person_id INT NOT NULL,
    order_date TIMESTAMPTZ DEFAULT NOW(),
    total_amount DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    deleted_at TIMESTAMPTZ,
    created_by UUID,
    updated_by UUID,
    deleted_by UUID,
    status BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_orders_person
    FOREIGN KEY (person_id)
    REFERENCES person(id)
);