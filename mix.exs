defmodule Tulip.Mixproject do
    use Mix.Project

    def project() do 
        [
            app: :tulip,
            version: "0.1.0",
            description: description(),
            package: package(),
            name: "Tulip",
            source_url: "https://github.com/johnnymayodev/tulip"
        ]
    end
    
    defp description() do
        "Tulip is a simple Gleam project for adding color to your terminal output. All 256 ANSI colors are supported."
    end

    defp package() do
        [
            licenses: ["MIT"],
            links: %{"GitHub" => "https://github.com/johnnymayodev/tulip"},
        ]
    end
end 