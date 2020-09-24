
SELECT 
    propiedades.codigo_propiedad,
    barrios_col.nombre_barrio,
    abonado.pnombre,
    abonado.papellido
FROM ABONADO 
INNER JOIN PROPIEDADES 
ON abonado.identidad_abonado = propiedades.identidad_abonado 
INNER JOIN ABONADO 
ON propiedades.identidad_abonado = abonado.identidad_abonado
INNER JOIN barrios_col 
ON propiedades.codigo_barrio = barrios_col.codigo_barrio
WHERE abonado.identidad_abonado = '1513-1999-00123';

SELECT * FROM PAGOS;

SELECT 
    PAGOS.ID_PAGO,
    tipo_pago.descripcion,
    abonado.pnombre||' '||abonado.snombre||' '||abonado.papellido||' '||abonado.sapellido
FROM PAGOS 
INNER JOIN ABONADO
ON PAGOS.IDENTIDAD_ABONADO = pagos.identidad_abonado
INNER JOIN DETALLE_PAGO
ON PAGOS.ID_PAGO = DETALLE_PAGO.ID_PAGO
INNER JOIN tipo_pago
ON PAGOS.COD_TIPO_PAGO = tipo_pago.cod_tipo_pago;

SELECT * FROM ABONADO;
select * from detalle_pago;
delete from detalle_pago where id_detalle=2;


SELECT 
    pagos.id_pago,
    pagos.fecha,
    abonado.identidad_abonado,
    abonado.pnombre||' '||abonado.snombre||' '||abonado.papellido||' '||abonado.sapellido,
    detalle_pago.codigo_propiedad,
    detalle_pago.codigo_negocio,
    detalle_pago.enero,
    detalle_pago.febrero,
    detalle_pago.marzo,
    detalle_pago.abril,
    detalle_pago.mayo,
    detalle_pago.junio,
    detalle_pago.julio,
    detalle_pago.agosto,
    detalle_pago.septiembre,
    detalle_pago.octubre,
    detalle_pago.noviembre,
    detalle_pago.diciembre,
    detalle_pago.anio
FROM PAGOS
INNER JOIN DETALLE_PAGO
ON pagos.id_pago = detalle_pago.id_pago
INNER JOIN abonado
ON abonado.identidad_abonado = pagos.identidad_abonado;