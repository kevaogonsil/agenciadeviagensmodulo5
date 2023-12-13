import React, { useState } from 'react';

const ViagemForm = () => {
  const [viagem, setViagem] = useState({ nome: '', sobrenome: '', email: '' });

  const handleSubmit = async (e) => {
    e.preventDefault();

    // Lógica para enviar os dados para o backend usando fetch ou axios

    // Exemplo com fetch:
    const response = await fetch('http://localhost:8080/viagens', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(viagem),
    });

    if (response.ok) {
      console.log('Viagem cadastrada com sucesso!');
      // Lógica para redirecionar ou mostrar mensagem de sucesso
    } else {
      console.error('Erro ao cadastrar viagem.');
      // Lógica para mostrar mensagem de erro
    }
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setViagem({ ...viagem, [name]: value });
  };

  return (
    <form onSubmit={handleSubmit}>
      <label htmlFor="nome">Nome:</label>
      <input type="text" id="nome" name="nome" value={viagem.nome} onChange={handleChange} required />

      <label htmlFor="sobrenome">Sobrenome:</label>
      <input type="text" id="sobrenome" name="sobrenome" value={viagem.sobrenome} onChange={handleChange} required />

      <label htmlFor="email">Email:</label>
      <input type="email" id="email" name="email" value={viagem.email} onChange={handleChange} required />

      <button type="submit">Enviar</button>
    </form>
  );
};

export default ViagemForm;
