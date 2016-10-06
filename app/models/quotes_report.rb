class QuotesReport < Prawn::Document

  def initialize(quotes)
    super()
    @totsal = 0
    @quotes = quotes
    header
    text_content
    table_content
    sumary
  end

  def header
    #This inserts an image in the pdf file and sets the size of the image
    #image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 100
  end

  def text_content
    y_position = cursor - 50

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
      bounding_box([0, y_position], :width => 540, :height => 50) do
        text "PhotoHub - Best Photographers, Great Clients", size: 15, style: :bold
        text "Relatório de Orçamento", size: 12, style: :bold
      end
  end

  def table_content
    table quote_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      self.column_widths = [90,200, 200, 50]
    end
  end

  def quote_rows
    [['Autor','Descrição','Valor', 'Status']] +
    @quotes.map do |quote|
      [quote.client.name,quote.total,quote.description,quote.status]
    end
  end

  def sumary
    #@quotes.each do |quote|
    #  @totsal += quote.salario if quote.salario
    #end

    y_position = cursor - 50

    bounding_box([0, y_position], :width => 540, :height => 50) do
      text "Total de Orçamentos: #{@quotes.size} ", size: 15, style: :bold
    end
  end
end
