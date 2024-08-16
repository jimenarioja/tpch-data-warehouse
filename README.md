
# Proyecto Final - Procesamiento y Análisis de Datos con Snowflake

## Descripción

Este proyecto tiene como objetivo el procesamiento, transformación y análisis de datos utilizando el dataset TCPH_SF1 en Snowflake. A través de varias fases, se construyen capas de datos que permiten realizar análisis detallados sobre los pedidos y ventas de una empresa de reparto.

## Estructura del Proyecto

1. **Parte A: Análisis Exploratorio**
   - Estudio inicial del dataset para comprender la estructura y contenido de las tablas.
   
2. **Parte B: Capa de Datos RAW**
   - Creación de una capa RAW simulando la ingesta continua de datos de pedidos.
   - Inserción de datos periódicos y generación de datos sintéticos.

3. **Parte C: Capa de Datos Intermedia**
   - Transformación de datos para crear tablas de hechos y dimensiones limpias.
   - Inclusión de campos como unidades vendidas, importes, tipo de operación, plazos de entrega, etc.
   - Ajuste de moneda y zonas horarias según la localización de tiendas y clientes.

4. **Parte D: Capa de Datos Analítica**
   - Generación de tablas agregadas para análisis a nivel de tienda y cliente.
   - Implementación de mecanismos de acceso controlado a estas agregadas.

5. **Parte E: Reprocesado Completo**
   - Reprocesamiento de datos históricos basado en cambios en la lógica de negocio (plazos de entrega).
   - Estrategias para reprocesar datos en intervalos de fecha específicos.

6. **Parte F: Análisis mediante Dashboards**
   - Creación de dashboards para visualizar el rendimiento operativo en términos de plazos de entrega y otras métricas clave.

## Requisitos

- **Snowflake**: Plataforma principal para almacenamiento y procesamiento de datos.
- **DBT Cloud (Opcional)**: Para la orquestación y ejecución de scripts en Snowflake.
- **Herramientas de Visualización**: Para la creación de dashboards (ej. Tableau, Power BI).

## Configuración

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/usuario/proyecto-snowflake.git
   cd proyecto-snowflake
   ```

2. **Configurar las credenciales de Snowflake**:
   - Configura tu entorno local o de desarrollo para conectarte a tu cuenta de Snowflake.
   
3. **Ejecutar scripts de ingesta de datos**:
   - Cargar las tablas RAW ejecutando los scripts disponibles en el directorio `scripts/ingesta`.

4. **Ejecutar scripts de transformación**:
   - Procesar los datos para construir las capas intermedia y analítica con los scripts en `scripts/transformacion`.

5. **Conectar las tablas a la herramienta de visualización**:
   - Configura tu herramienta de visualización preferida para conectarse a Snowflake y cargar las tablas agregadas para análisis.

## Uso

- **Ingesta Continua**: El proyecto simula un flujo continuo de datos. Puedes programar tareas para insertar datos periódicamente en las tablas RAW.
- **Análisis Incremental**: Las tablas intermedias y analíticas se actualizan a medida que nuevos datos se ingresan en la capa RAW.
- **Reprocesamiento**: Si hay cambios en las reglas de negocio, puedes ejecutar scripts de reprocesado para actualizar los datos históricos.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas mejorar el proyecto o reportar problemas, abre un issue o envía un pull request.

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.