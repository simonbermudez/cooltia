require "application_system_test_case"

class EventosTest < ApplicationSystemTestCase
  setup do
    @evento = eventos(:one)
  end

  test "visiting the index" do
    visit eventos_url
    assert_selector "h1", text: "Eventos"
  end

  test "should create evento" do
    visit eventos_url
    click_on "New evento"

    fill_in "Descripcion", with: @evento.descripcion
    fill_in "Fecha", with: @evento.fecha
    fill_in "Fuente", with: @evento.fuente
    fill_in "Hora", with: @evento.hora
    fill_in "Imagen", with: @evento.imagen
    fill_in "Letra chica", with: @evento.letra_chica
    fill_in "Lugar", with: @evento.lugar
    fill_in "Nombre", with: @evento.nombre
    click_on "Create Evento"

    assert_text "Evento was successfully created"
    click_on "Back"
  end

  test "should update Evento" do
    visit evento_url(@evento)
    click_on "Edit this evento", match: :first

    fill_in "Descripcion", with: @evento.descripcion
    fill_in "Fecha", with: @evento.fecha
    fill_in "Fuente", with: @evento.fuente
    fill_in "Hora", with: @evento.hora.to_s
    fill_in "Imagen", with: @evento.imagen
    fill_in "Letra chica", with: @evento.letra_chica
    fill_in "Lugar", with: @evento.lugar
    fill_in "Nombre", with: @evento.nombre
    click_on "Update Evento"

    assert_text "Evento was successfully updated"
    click_on "Back"
  end

  test "should destroy Evento" do
    visit evento_url(@evento)
    click_on "Destroy this evento", match: :first

    assert_text "Evento was successfully destroyed"
  end
end
