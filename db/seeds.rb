# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# EXECUTAR... rails db:drop db:create db:migrate db:seed
puts "Cadastrando moedas..."

coins =
    [
        { description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://assets.chinatechnews.com/wp-content/uploads/bitcoin-logo.jpg"
        },

        { description: "Ethereum",
        acronym: "ETH",
        url_image: "https://hdx-prd-web-cms-upload-bucket.s3.amazonaws.com/ETHEREUM_LOGO_29eef89fb4.png"
        },

        { description: "Dash",
        acronym: "DASH",
        url_image: "https://www.pngall.com/wp-content/uploads/10/Dash-Crypto-Logo-No-Background.png"
        }
    ]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

puts "Moedas cadastradas com sucesso..."