alter table dim_vendedor
add constraint PK_dim_vendedor PRIMARY KEY (Codigo_Vendedor);

alter table dim_producto
add constraint PK_dim_producto PRIMARY KEY (Codigo_Producto);

alter table dim_cliente
add constraint PK_dim_cliente PRIMARY KEY (Codigo_Cliente);

alter table dim_tienda
add constraint PK_dim_tienda PRIMARY KEY (Cod_Tienda);

alter table dim_fact_ventas
add constraint FK_vendedores foreign key(Codigo_Vendedor) references dim_vendedor(Codigo_Vendedor),
add constraint FK_clientes foreign key(Codigo_Cliente) references dim_cliente(Codigo_Cliente),
add constraint FK_productos foreign key(Codigo_Producto) references dim_producto(Codigo_Producto),
add constraint FK_Tiendas foreign key(Cod_Tienda) references dim_tienda(Cod_Tienda);

insert into dim_cliente values(9999,'marco ayala','Zambiza','ZAM','Quito y Bolivar','-12.0638','-76.9557','Ecuador');

insert into dim_fact_ventas values(777777,'2021/04/26',2032,4000,'14072',9999,1,20,20,6,4,2021);


