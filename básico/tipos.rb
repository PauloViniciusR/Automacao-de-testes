# --- Tipos Ruby ---

# o tipo de uma variável é definido no momento que a mesma recebe o valor

produto = 'Notebook Lenovo'
preco = 2680.00
quantidade = 1
modelo = 'Ideapad 3i'

        puts 'produto: ' + produto
        puts 'preço: R$' + preco.to_s
        puts 'quantidade: ' + quantidade.to_s
        puts 'modelo: ' + modelo

        puts produto.class
        puts preco.class
        puts quantidade.class
        puts modelo.class