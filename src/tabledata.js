module.exports = {
  ids: [
    {0:
    {
      id: 'mantenimientoClientes',
      headers: [
       { label: 'Número' },
       { label: 'Nombre completo' },
       { label: 'Crédito autorizado', type: 'currency' }
      ],
      rows: [
        { id: 'E001', data: ['E001', 'Juan Pérez', 15000] },
        { id: 'E009', data: ['E009', 'Hortencia López', 18000] }
      ],
      actions: [
        { label: 'Inventarios', link: 'clienteAgregar' },
        { label: 'Productos', link: 'productoCliente' }
      ]
    }
    },
    {1:
    {
      id: 'WWW',
      headers: [
          { label: 'Número de cliente' }
      ],
      rows: [
          { id: 'E001', data: ['E001'] },
          { id: 'E009', data: ['E009'] },
          { id: 'E010', data: ['E010'] }
      ]
    }
    },
    {2:
    {
      id: 'marco',
      headers: [
         { label: 'Nombre' },
         { label: 'Apellido Paterno' }
      ],
      rows: [
           { id: 'E001', data: ['Marco', 'Perez'] },
           { id: 'E009', data: ['Edgar', 'Fuentes'] },
           { id: 'E010', data: ['Raul', 'Moctezuma'] }
      ]
    }
    },
    {3:
    {
      id: 'marco2',
      headers: [
           { label: 'Nombre' },
           { label: 'Apellido Paterno' },
           { label: 'Apellido MAterno' }
      ],
      rows: [
           { id: 'E001', data: ['Marco', 'Pérez', 'X'] },
           { id: 'E009', data: ['Edgar', 'Fuentes', 'Z'] },
           { id: 'E010', data: ['Raul', 'Moctezuma', 'E'] }
      ]
    }
    },

    {4:
    {
      id: 'cliente-resultados',
      headers: [
       { label: 'Número' },
       { label: 'Nombre completo' },
       { label: 'Crédito Disponible', type: 'currency' }
      ],
      rows: [
        { id: 'E001', data: ['E001', 'Ramiro Huerta Jimenez', 354000] },
        { id: 'E009', data: ['E009', 'Abarrotera San Juan, S.A. de C.V.', 2800000] }
      ],
      actions: [
        { label: 'Pedidos', link: 'pedido-admin' },
        { label: 'Facturas', link: 'facturas-admin' }
      ]
    }
    },

    {5:
    {
      id: 'pedido-resultados',
      headers: [
       { label: 'Pedido' },
       { label: 'Cliente' },
       { label: 'Solicitado', type: 'date' },
       { label: 'Total', type: 'currency' }
      ],
      rows: [
        { id: 'P003', data: ['P003', 'Abarrotera San Juan, S.A. de C.V.', '2018/01/15', '$354,000'] },
        { id: 'E009', data: ['E009', 'Abarrotera San Juan, S.A. de C.V.', '2017/12/21', '$2,800,000'] }
      ],
      actions: [
        { label: 'Productos', link: 'producto-admin' }
      ]
    }
    }
  ]
}
