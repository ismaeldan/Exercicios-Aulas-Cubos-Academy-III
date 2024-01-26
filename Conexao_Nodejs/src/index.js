const express = require('express')
const { Pool } = require('pg')

//import { Client } from 'pg'

const app = express()

app.use(express.json())

const pool = new Pool({
  host: 'localhost',
  port: 5432,
  user: 'postgres',
  password: 'Iml07@fe',
  database: 'aula_conexao_node_pg'
})

app.get('/', async (req, res) => {
  //const {id} = req.params
  const { pag, porPag } = req.query
  try {
    // const query = 'select * from empresas where id = $1'
    // const params = [id]

    // const query = 'update empresas set site = $1 where id = $2'
    // const params = ['www.cakewalk.com', 1]

    // const query = `
    //   select e.id as empresaId, f.id as filialId, e.nome, f.pais, p.nome as funcionario
    //   from empresas e
    //   join filiais f
    //   on e.id = f.empresa_id
    //   join pessoas p
    //   on e.id = p.empresa_id;
    // `

    const query = 'select * from pessoas order by id asc limit $1 offset $2'

    const { rowCount } = await pool.query('select * from pessoas')

    const offset = pag === 1 ? 0 : (pag - 1) * porPag

    const resultado = await pool.query(query, [porPag, offset])

    const result = {
      pag,
      porPag,
      total: rowCount,
      registros: resultado.rows
    }

    return res.json(result)
  } catch (error) {
    console.log(error.message)
  }
})

app.listen(3000)
