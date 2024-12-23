using PkgTemplates

t = Template(;
    user="Paulogcd",
    plugins=[
        License(; name="MIT"),
        Git(; manifest=true, ssh=true),
        GitHubActions(; x86=true),
        Codecov(),
        Documenter{GitHubActions}(),
        Develop(),
    ],
)

t("Replication_Monge_et_al_2019")

generate("Replication_Monge_et_al_2019")