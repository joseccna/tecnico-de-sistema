export interface MembroEquipe{
    id: number;
    nome: string;
    cargo: string;
    descricao: string;
    
}

export const equipe: MembroEquipe[] = [
    
    {id: 1, nome: "Andre Luz", cargo: "CEO & Fundador", descricao: "Especialista em gestão educacional com 15 anos de experiencia no setor técnico."},

    {id: 2, nome: "Carla Mendes", cargo: "CTO", descricao: "Engenheira de software focada em arquiteturas escaláveis e segurança de dados."},

    {id: 3, nome: "Paulo Neto", cargo: "Head de Produto", descricao: "Designer UX apaixonado por criar interfaces que facilitam o dia a dia do professor."},

    {id: 4, nome: "Rita Costa", cargo: "Sucesso do cliente", descricao: "Garante que cada escola parceira extraiao máximo potencial da nossa tecnologia."},

]

