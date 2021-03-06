export class AlunoModel {
    matricula: number;
    nome: string;
    sobrenome: string;
    senha: string;
    nascimento: string;
    email: string;
    telefone: string;
    imagem: string = "padrao.png";
    permissoes = [
        {
            codigo: 1,
            descricao: "ROLE_LISTAR_ALUNOS"
        },
        {
            codigo: 5,
            descricao: "ROLE_EDITAR_ALUNO"
        },
        {
            codigo: 2,
            descricao: "ROLE_LISTAR_ALUNO"
        },
        {
            codigo: 6,
            descricao: "ROLE_LISTAR_FALTAS"
        },
        {
            codigo: 9,
            descricao: "ROLE_LISTAR_NOTAS"
        },
        {
            codigo: 13,
            descricao: "ROLE_LISTAR_PROFESSORES"
        }
    ]
}

export class ProfessorModel {
    id: number;
    nome: string;
    sobrenome: string;
    disciplina: string;
    senha: string;
    nascimento: string;
    email: string;
    telefone: string;
    imagem: string = "padrao.png";
    permissoes = [
        {
            codigo: 1,
            descricao: "ROLE_LISTAR_ALUNOS"
        },
        {
            codigo: 2,
            descricao: "ROLE_LISTAR_ALUNO"
        },
        {
            codigo: 3,
            descricao: "ROLE_SALVAR_ALUNO"
        },
        {
            codigo: 4,
            descricao: "ROLE_DELETAR_ALUNO"
        },
        {
            codigo: 5,
            descricao: "ROLE_EDITAR_ALUNOS"
        },
        {
            codigo: 6,
            descricao: "ROLE_LISTAR_FALTAS"
        },
        {
            codigo: 7,
            descricao: "ROLE_SALVAR_FALTA"
        },
        {
            codigo: 8,
            descricao: "ROLE_DELETAR_FALTA"
        },
        {
            codigo: 9,
            descricao: "ROLE_LISTAR_NOTAS"
        },
        {
            codigo: 10,
            descricao: "ROLE_SALVAR_NOTA"
        },
        {
            codigo: 11,
            descricao: "ROLE_DELETAR_NOTA"
        },
        {
            codigo: 12,
            descricao: "ROLE_EDITAR_NOTA"
        },
        {
            codigo: 13,
            descricao: "ROLE_LISTAR_PROFESSORES"
        },
        {
            codigo: 14,
            descricao: "ROLE_LISTAR_PROFESSOR"
        },
        {
            codigo: 17,
            descricao: "ROLE_EDITAR_PROFESSOR"
        },
        {
            codigo: 18,
            descricao: "ROLE_EDITAR_FALTA"
        }
    ]
}

export class NotasModel {
    nota1;
    nota2;
    nota3;
    nota4;
    media;
    notasid: {
        materia,
        aluno,
    }
}

export class FaltasModel {
    faltasid: {
        materia,
        aluno,
    };
    numero1;
    numero2;
    numero3;
    numero4;
}