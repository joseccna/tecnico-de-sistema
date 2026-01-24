using System.Collections.ObjectModel;

namespace TaskDeskNew;

public partial class MainPage : ContentPage
{
    public ObservableCollection<TaskItem> Tasks { get; set; } = new();

    public MainPage()
    {
        InitializeComponent();
        BindingContext = this;

        UpdateSummary();
    }

    private async void OnAddTaskClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(TitleEntry.Text))
        {
            await DisplayAlert("Atenção", "O título da tarefa é obrigatório.", "OK");
            return;
        }

        var newTask = new TaskItem
        {
            Title = DescriptionEditor.Text, 
            Description = DescriptionEditor.Text,
            Priority = PriorityPicker.SelectedItem?.ToString() ?? "Média",
            CreatedAt = DateTime.Now,
            IsDone = false
        };

        Tasks.Add(newTask);

        TitleEntry.Text = string.Empty;
        DescriptionEditor.Text = string.Empty;
        PriorityPicker.SelectedItem = null;

        UpdateSummary();
    }

    private void OnCompleteTaskClicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.BindingContext is TaskItem task)
        {
            task.IsDone = !task.IsDone;
        }
    }

    private void OnDeleteTaskClicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.BindingContext is TaskItem task)
        {
            Tasks.Remove(task);
        }
    }

    private void UpdateSummary()
    {
        var total = Tasks.Count;
        var done = Tasks.Count(t => t.IsDone);

        TotalTasksLabel.Text = total.ToString();

        if (total == 0)
        {
            SummaryLabel.Text = "Você ainda não cadastrou nenhuma tarefa.";
        }
        else
        {
            SummaryLabel.Text =
                $"Você tem {total} tarefa(s), sendo {done} concluída(s).";
        }
    }
}

public class TaskItem
{
    public string Title { get; set; }
    public string Description { get; set; }
    public string Priority { get; set; }
    public DateTime CreatedAt { get; set; }
    public bool IsDone { get; set; }
}
