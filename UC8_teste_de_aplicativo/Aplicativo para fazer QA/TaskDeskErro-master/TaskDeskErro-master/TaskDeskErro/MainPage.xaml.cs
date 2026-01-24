using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace TaskDeskErro;

public partial class MainPage : ContentPage
{
    public ObservableCollection<TaskItem> Tasks { get; } = new();

    public MainPage()
    {
        InitializeComponent();

        BindingContext = this;
    }

    private async void OnAddTaskClicked(object sender, EventArgs e)
    {
        var title = TitleEntry.Text?.Trim();
        var description = DescriptionEditor.Text?.Trim();
        var priority = PriorityPicker.SelectedItem?.ToString();

        var task = new TaskItem
        {
            Title = title,           
            Description = description,
            Priority = priority,     
            IsCompleted = false
        };

        Tasks.Add(task);

        TitleEntry.Text = string.Empty;
        DescriptionEditor.Text = string.Empty;
        PriorityPicker.SelectedIndex = -1;
    }

    private void OnCompleteTaskClicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.CommandParameter is TaskItem task)
        {
            
        }
    }
}
public class TaskItem : INotifyPropertyChanged
{
    private string _title;
    private string _description;
    private string _priority;
    private bool _isCompleted;

    public string Title
    {
        get => _title;
        set => SetField(ref _title, value);
    }

    public string Description
    {
        get => _description;
        set => SetField(ref _description, value);
    }

    public string Priority
    {
        get => _priority;
        set => SetField(ref _priority, value);
    }

    public bool IsCompleted
    {
        get => _isCompleted;
        set
        {
            if (SetField(ref _isCompleted, value))
            {
                OnPropertyChanged(nameof(StatusText));
            }
        }
    }

    public string StatusText => IsCompleted ? "Concluída" : "Pendente";

    public event PropertyChangedEventHandler PropertyChanged;

    protected bool SetField<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
    {
        if (EqualityComparer<T>.Default.Equals(field, value))
            return false;

        field = value;
        OnPropertyChanged(propertyName);
        return true;
    }

    protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
}
