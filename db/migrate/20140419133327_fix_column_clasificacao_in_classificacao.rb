class FixColumnClasificacaoInClassificacao < ActiveRecord::Migration
  def change
    remove_column :classificacoes, :classificao
    add_column :classificacoes, :classificacao, :string, :default => ""
  end
end
