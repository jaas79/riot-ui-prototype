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
        { label:'Inventarios', link: 'clienteAgregar' },
        { label:'Productos', link: 'productoCliente' }
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
    }
  ]
}
