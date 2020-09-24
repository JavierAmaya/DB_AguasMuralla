SELECT *
FROM PAGOS
LEFT JOIN ABONADO
ON abonado.identidad_abonado = pagos.identidad_abonado
LEFT JOIN detalle_pago
ON pagos.id_pago = detalle_pago.id_pago
WHERE detalle_pago.diciembre IS NULL OR detalle_pago.diciembre =0
AND detalle_pago.anio = 2020;


SELECT * FROM PAGOS;
SELECT * FROM detalle_pago;

DELETE FROM PAGOS WHERE id_pago = 7;