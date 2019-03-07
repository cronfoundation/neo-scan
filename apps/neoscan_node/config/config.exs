use Mix.Config

if Mix.env() == :test do
  config :neoscan_node,
    notification_seeds: [
      "http://localhost:11333/v1"
    ]
else
  config :neoscan_node,
    notification_seeds: [
      "http://localhost:11333/v1",
      "http://localhost:11333/v1",
      "http://localhost:11333/v1",
      "http://localhost:11333/v1"
    ]
end

config :neoscan_node,
  node_list_url:
    "https://raw.githubusercontent.com/CityOfZion/neo-mon/master/docs/assets/mainnet.json"

config :neoscan_node,
  seeds: [
    "http://seed1.cron.global:10332",
    "http://seed2.cron.global:10332",
    "http://seed3.cron.global:10332",
    "http://seed4.cron.global:10332",
    "http://seed5.cron.global:10332"
  ]

if Mix.env() == :test do
  config :neoscan_node,
    seeds: [
      "http://localhost:10332",
      "http://localhost:10332",
      "http://localhost:10332",
      "http://localhost:10332",
      "http://localhost:10332"
    ]
end
