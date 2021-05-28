alter table dim_clientes
add constraint PK_dim_clientes PRIMARY KEY (cliente);

alter table dim_tipos_cliente
add constraint PK_dim_tipos_cliente PRIMARY KEY (tipo);

alter table dim_articulos
add constraint PK_dim_articulos PRIMARY KEY (codigo);

alter table dim_facturas
add constraint PK_dim_facturas PRIMARY KEY (factura);

alter table dim_facturas_lineas
add constraint FK_facturas foreign key(factura) references dim_facturas(factura),
add constraint FK_articulos foreign key(articulo) references dim_articulos(codigo);

alter table dim_clientes
add constraint FK_tipos_cliente foreign key(tipo) references dim_tipos_cliente(tipo);

