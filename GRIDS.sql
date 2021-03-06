------- Hechos pagos
SELECT
   PAGOS.ID_PAGO,
   PAGOS.FECHA,
   TIPO_PAGO.DESCRIPCION,
   SERVICIOS.SERVICIO,
   PAGOS.IDENTIDAD_ABONADO,
   ABONADO.PNOMBRE,
   ABONADO.PAPELLIDO,
   ABONADO.TELEFONO,
   DETALLE_PAGO.ID_DETALLE,
   DETALLE_PAGO.CODIGO_PROPIEDAD,
   DETALLE_PAGO.CODIGO_NEGOCIO,
   DETALLE_PAGO.SALDOS,
   DETALLE_PAGO.ENERO,
   DETALLE_PAGO.FEBRERO,
   DETALLE_PAGO.MARZO,
   DETALLE_PAGO.ABRIL,
   DETALLE_PAGO.MAYO,
   DETALLE_PAGO.JUNIO,
   DETALLE_PAGO.JULIO,
   DETALLE_PAGO.AGOSTO,
   DETALLE_PAGO.SEPTIEMBRE,
   DETALLE_PAGO.OCTUBRE,
   DETALLE_PAGO.NOVIEMBRE,
   DETALLE_PAGO.DICIEMBRE,
   DETALLE_PAGO.ANIO,
   DETALLE_PAGO.PAGO_COMPLETO
FROM
   DB_ADMIN_AGUA.PAGOS,
   DB_ADMIN_AGUA.DETALLE_PAGO,
   DB_ADMIN_AGUA.ABONADO,
   DB_ADMIN_AGUA.SERVICIOS,
   DB_ADMIN_AGUA.TIPO_PAGO
WHERE 
   (PAGOS.ID_PAGO = DETALLE_PAGO.ID_PAGO) AND 
   (PAGOS.IDENTIDAD_ABONADO = ABONADO.IDENTIDAD_ABONADO) AND 
   (PAGOS.ID_SERVICIO = SERVICIOS.ID_SERVICIO) AND 
   (PAGOS.COD_TIPO_PAGO = TIPO_PAGO.COD_TIPO_PAGO)
   
   
   -------
   
   
   --- morocidad
   
   SELECT
   DETALLE_PAGO.CODIGO_PROPIEDAD,
   ABONADO.IDENTIDAD_ABONADO,
   ABONADO.PNOMBRE,
   ABONADO.PAPELLIDO,
   ABONADO.TELEFONO,
   DETALLE_PAGO.DICIEMBRE,
   DETALLE_PAGO.ANIO
FROM
   DB_ADMIN_AGUA.PAGOS,
   DB_ADMIN_AGUA.DETALLE_PAGO,
   DB_ADMIN_AGUA.ABONADO
WHERE 
   (PAGOS.ID_PAGO = DETALLE_PAGO.ID_PAGO) AND 
   (PAGOS.IDENTIDAD_ABONADO(+) = ABONADO.IDENTIDAD_ABONADO) AND
   (DB_ADMIN_AGUA.DETALLE_PAGO.DICIEMBRE = 0) 
   
   
   
   ----- SOLO PAGOS AGUA
   
   SELECT
   ID_PAGO,
   COD_TIPO_PAGO,
   IDENTIDAD_ABONADO,
   FECHA,
   ID_SERVICIO
FROM
   DB_ADMIN_AGUA.PAGOS
WHERE 
   (PAGOS.ID_SERVICIO = 'AG-01')
   
   
   ----- SOLO PAGOS DESECHOS
   
   SELECT
   ID_PAGO,
   COD_TIPO_PAGO,
   IDENTIDAD_ABONADO,
   FECHA,
   ID_SERVICIO
FROM
   DB_ADMIN_AGUA.PAGOS
WHERE 
   (PAGOS.ID_SERVICIO = 'DS-01')
        