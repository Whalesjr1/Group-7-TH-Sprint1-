using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void AddItems_Click(object sender, RoutedEventArgs e)
        {
            // Clear any previous items in the list
            listItems.Items.Clear();

            // Create some new items
            book l1 = new book("King of Fishes V2");
            room e1 = new room("Room 6");
            Computer l2 = new Computer("Mac Book");
            book g1 = new book("King of Fishes Returns To The Sea");

            // Add the items to the GUI listbox
            listItems.Items.Add(l1.getName());
            listItems.Items.Add(e1.getName());
            listItems.Items.Add(l2.getName());
            listItems.Items.Add(g1.getName());

            // Clear any previous items in the combobox
            itemsComboBox.Items.Clear();

            // Add items to the combobox. We will make it easy by adding a dynamic class with properties value and displayValue
            itemsComboBox.Items.Add(new { value = l1.getAccess(), displayValue = l1.getName() });
            itemsComboBox.Items.Add(new { value = e1.getName(), displayValue = e1.getName() });
            itemsComboBox.Items.Add(new { value = l2.getAccess(), displayValue = l2.getName() });
            itemsComboBox.Items.Add(new { value = g1.getAccess(), displayValue = g1.getName() });

            // This tells the combobox where to find the value and display value
            itemsComboBox.SelectedValuePath = "value";
            itemsComboBox.DisplayMemberPath = "displayValue";

        }
        private void items_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Retrieve the selected item: its a dynamically created data stucture
            var selection = itemsComboBox.SelectedItem as dynamic;

            // Show the items selected
            MessageBox.Show("You choose to order " + selection.displayValue + " " + selection.value);
        }
    }
}
