using System.ComponentModel.DataAnnotations;

using System.Threading.Tasks;

namespace TaskDeskLite.Core;

public class TaskService : ITaskService

{

    // Persistência em memória

    private readonly List<TaskItem> _tasks = new();

    public IReadOnlyList<TaskItem> GetAll()

        => _tasks.OrderByDescending(t => t.CreatedAt).ToList();

    public TaskItem GetById(Guid id)

    {

        var task = _tasks.FirstOrDefault(t => t.Id == id);

        if (task is null) throw new NotFoundException("Tarefa não encontrada.");

        return task;

    }

    public TaskItem Create(TaskItem task)// serve para evitar perigo de variável não usada

    {

        TaskValidator.ValidateForCreateOrUpdate(task); // Serve para validar a tarefa usando a classe TaskValidator

        var newTask = task;

        {

            // Validação básica do título

            if (string.IsNullOrWhiteSpace(newTask.Title))

                throw new DomainValidationException("O título da tarefa é obrigatório.");

            // Garantir Id novo

            newTask.Id = Guid.NewGuid();

            // Garantir Status Pending

            newTask.Status = TaskStatus.Pending;

            // Garantir Created

            newTask.CreatedAt = DateTime.UtcNow;

            // Adicionar na lista 

            _tasks.Add(newTask);

            // Retornar a tafera criada

            return newTask;

        }

        // TODO: validar

        // TODO: garantir Id novo e Status Pending

        // TODO: adicionar na lista

        // TODO: retornar a tarefa criada

        throw new NotImplementedException();

    }

    public TaskItem Update(TaskItem task)

    {

        TaskValidator.ValidateForCreateOrUpdate(task);

        var newTask = GetById(task.Id); // Buscar a tarefa existente pelo Id

        if (newTask.Status == TaskStatus.Done) // Verificar se o status é Done

            throw new BusinessRuleException("Tarefas concluídas não podem ser editadas."); // Lançar exceção se for o caso

        {

            newTask.Title = task.Title; // Atualizar os campos permitidos

            newTask.Status = task.Status;// Atualizar o status

            newTask.DueDate = task.DueDate; // Atualizar a data de vencimento

            return newTask;


        }

        // TODO: validar

        // TODO: buscar existente

        // TODO: regra: se Status Done -> não pode editar (BusinessRuleException)

        // TODO: atualizar campos permitidos

        // TODO: retornar atualizado

        throw new NotImplementedException();

    }

    public void Delete(Guid id)

    {

        // Buscar a tarefa existente pelo Id

        var task = GetById(id);

        // Remover a tarefa da lista

        _tasks.Remove(task);




        // TODO: se não existir -> NotFoundException

        // TODO: remover

    }

    public TaskItem MarkAsDone(Guid id)

    {

        var newTask = GetById(id); // Buscar a tarefa existente pelo Id

        if (newTask.Status == TaskStatus.Done) // Verificar se o status é Done

            throw new BusinessRuleException("Tarefas concluídas não podem ser editadas."); // Lançar exceção se for o caso

        newTask.Status = TaskStatus.Done;

        return newTask;


        // TODO: buscar existente

        // TODO: marcar Done

        // TODO: retornar

    }

}

