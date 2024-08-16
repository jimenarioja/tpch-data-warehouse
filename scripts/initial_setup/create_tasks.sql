-- Crear las tareas necesarias
CREATE TASK populate_daily_sales_task
    WAREHOUSE = 'COMPUTE_WH'
    SCHEDULE = '60 MINUTE'
    SUSPEND_TASK_AFTER_NUM_FAILURES = 3
AS
BEGIN
    -- Código de inserción de ventas diarias
    CALL populate_daily_sales();
END;

CREATE TASK update_delivery_times_task
    WAREHOUSE = 'COMPUTE_WH'
    SCHEDULE = '60 MINUTE'
    SUSPEND_TASK_AFTER_NUM_FAILURES = 3
AS
BEGIN
    -- Código para actualizar tiempos de entrega
    CALL update_delivery_times();
END;

CREATE TASK reprocess_delivery_times_task
    WAREHOUSE = 'COMPUTE_WH'
    SCHEDULE = '1 DAY'
    SUSPEND_TASK_AFTER_NUM_FAILURES = 3
AS
BEGIN
    -- Código para reprocesar los tiempos de entrega
    CALL reprocess_delivery_times();
END;

-- Iniciar las tareas
ALTER TASK populate_daily_sales_task RESUME;
ALTER TASK update_delivery_times_task RESUME;
ALTER TASK reprocess_delivery_times_task RESUME;