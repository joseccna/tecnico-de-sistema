using TaskDeskLite.Core;

namespace TaskDeskLite.Tests
{
    public class UnitTest1
    {

        [Fact]
        public void Create_TarefaValida_CriaComSucesso()
        {
            var service = new TaskService();

            var task = new TaskItem
            {
                Title = "Minha tarefa"
            };

            var result = service.Create(task);

            Assert.Equal(Core.TaskStatus.Pending, result.Status);
        }

        [Fact]
        public void Create_TituloVazio_LancaExcecao()
        {
            var service = new TaskService();

            var task = new TaskItem
            {
                Title = ""
            };

            Assert.Throws<DomainValidationException>(() =>
                service.Create(task));
        }


        [Fact]
        public void Create_TituloMuitoCurto_LancaExcecao()
        {
            var service = new TaskService();

            var task = new TaskItem
            {
                Title = "AB"
            };

            Assert.Throws<DomainValidationException>(() =>
                service.Create(task));
        }


        [Fact]
        public void Create_TituloComPalavraProibida_LancaExcecao()
        {
            var service = new TaskService();

            var task = new TaskItem
            {
                Title = "Tentativa de hack"
            };

            Assert.Throws<DomainValidationException>(() =>
                service.Create(task));
        }


        [Fact]
        public void Create_DataNoPassado_LancaExcecao()
        {
            var service = new TaskService();

            var task = new TaskItem
            {
                Title = "Tarefa válida",
                DueDate = DateTime.Now.AddDays(-1)
            };

            Assert.Throws<DomainValidationException>(() =>
                service.Create(task));
        }

        [Fact]
        public void GetById_IdInexistente_LancaNotFound()
        {
            var service = new TaskService();

            Assert.Throws<NotFoundException>(() =>
                service.GetById(Guid.NewGuid()));
        }

        [Fact]
        public void Update_TarefaConcluida_LancaExcecao()
        {
            var service = new TaskService();

            var task = service.Create(new TaskItem { Title = "Minha tarefa" });
            service.MarkAsDone(task.Id);

            task.Title = "Novo título";

            Assert.Throws<BusinessRuleException>(() =>
                service.Update(task));
        }

        [Fact]
        public void MarkAsDone_TarefaValida_MudaStatus()
        {
            var service = new TaskService();

            var task = service.Create(new TaskItem { Title = "Minha tarefa" });

            var result = service.MarkAsDone(task.Id);

            Assert.Equal(Core.TaskStatus.Done, result.Status);
        }

    }
}
