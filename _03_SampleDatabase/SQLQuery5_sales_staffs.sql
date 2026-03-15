USE BikeStores;
GO


CREATE TABLE sales.staffs 
(
    staff_id INT IDENTITY (1, 1) PRIMARY KEY,   -- Surrogate PK, auto-increment
    first_name VARCHAR(50) NOT NULL,            -- Required
    last_name VARCHAR(50) NOT NULL,             -- Required
    email VARCHAR(255) NOT NULL UNIQUE,         -- Required, must be unique
    phone VARCHAR(25),                          -- Optional
    active TINYINT NOT NULL,                    -- Status flag: 1=active, 0=inactive
    store_id INT NOT NULL,                      -- FK to sales.stores
    manager_id INT,                             -- FK to another staff (self-reference)

    -- FK: staff belongs to a store
    FOREIGN KEY (store_id) 
        REFERENCES sales.stores (store_id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    -- FK: staff reports to another staff
    FOREIGN KEY (manager_id) 
        REFERENCES sales.staffs (staff_id) 
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION
);
GO

