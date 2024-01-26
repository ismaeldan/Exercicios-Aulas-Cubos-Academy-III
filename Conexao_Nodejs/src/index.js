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

app.get('/:id', async (req, res) => {
  const { id } = req.params
  try {
    // const query = 'select * from empresas where id = $1'
    // const params = [id]

    const query = 'update empresas set site = $1 where id = $2'
    const params = ['www.cakewalk.com', 1]

    const resultado = await pool.query(query, params)

    return res.json(resultado.rows)
  } catch (error) {
    console.log(error.message)
  }
})

app.listen(3000)
