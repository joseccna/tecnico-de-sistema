using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace GestaoDeEscalas
{
    public partial class TelaInicial 
    {

        public TelaInicial()
        {
            InitializeComponent();
            this.Opacity = 0;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await this.FadeTo(1, 400);
        }


        private async void BtnSair_Clicked(object sender, EventArgs e)
        {
            bool confirmar = await DisplayAlert(
                "Sair",
                "Deseja realmente sair?",
                "Sim",
                "Cancelar");

            if (confirmar)
            {
                await Navigation.PushAsync(new MainPage());
            }
        }



        private async Task AnimarCard(View card)
        {
            await card.ScaleTo(0.95, 80, Easing.CubicOut);
            await card.ScaleTo(1, 80, Easing.CubicIn);
        }

        private async void CardPonto_Tapped(object sender, EventArgs e)
        {
            await AnimarCard(CardPonto);
            await Navigation.PushAsync(new RegistrarPonto());
        }

        private async void CardEscala_Tapped(object sender, EventArgs e)
        {
            await AnimarCard(CardEscala);
            await Navigation.PushAsync(new Escalas());
        }

        private async void CardTrocas_Tapped(object sender, EventArgs e)
        {
            await AnimarCard(CardTrocas);
            await Navigation.PushAsync(new Trocas());
        }

        private async void CardFinanceiro_Tapped(object sender, EventArgs e)
        {
            await AnimarCard(CardFinanceiro);
            await Navigation.PushAsync(new Financeiro());
        }




        //async void BtnPerfil_Clicked(object sender, EventArgs e)
        //{
        //    await Shell.Current.GoToAsync("Perfil");
        //}

        private async void BtnPerfil_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Perfil());
        }

     


        //async void BtnEscalas_Clicked(object sender, EventArgs e)
        //{
        //    await Shell.Current.GoToAsync("Escalas");
        //}
        //async void BtnRegistrarPonto_Clicked(object sender, EventArgs e)
        //{
        //    await Shell.Current.GoToAsync("RegistrarPonto");
        //}
        //async void BtnFinanceiro_Clicked(object sender, EventArgs e)
        //{
        //    await Shell.Current.GoToAsync("Financeiro");
        //}
        //async void BtnTrocas_Clicked(object sender, EventArgs e)
        //{
        //    await Shell.Current.GoToAsync("Trocas");
        //}
    }


}
