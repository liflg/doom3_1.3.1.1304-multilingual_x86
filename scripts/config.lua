Setup.Package
{
    vendor = "liflg.org",
    id = "doom3",
    description = "Doom III",
    version = "1.3.1.1304-multilingual",
    splash = "splash.png",
    superuser = false,
    write_manifest = true,
    support_uninstall = true,
    splashpos = "left",

    recommended_destinations =
    {
        "/usr/local/games",
        "/opt/",
        MojoSetup.info.homedir,
    },

    Setup.Readme
    {
        description = "README",
        source = "README.liflg"
    },

    Setup.Eula {
        source = "License.txt",
        description = "Doom3 EULA",
    },

    Setup.Media
    {
        id = "disc1",
        description = "DOOM III Disc One",
        uniquefile = "Setup/Data/base/pak002.pk4"
    },

    Setup.Media
    {
        id = "disc2",
        description = "DOOM III Disc Two",
        uniquefile = "Setup/Data/base/pak001.pk4"
    },

    Setup.Media
    {
        id = "disc3",
        description = "DOOM III Disc Three",
        uniquefile = "Setup/Data/base/pak004.pk4"
    },

    Setup.Media
    {
        id = "discxp",
        description = "DOOM III Resurrection of Evil Disc",
        uniquefile = "Setup/Data/d3xp/pak000.pk4",
    },

   Setup.Option
    {
        value = true,
        required = true,
        bytes = 1572864000,
        description = "Required game data",
        tooltip = "Needs the Doom III-CDROMs",

        Setup.DesktopMenuItem
        {
            disabled = false,
            name = "Doom III",
            genericname = "Play Doom III",
            tooltip = "Play Doom III",
            builtin_icon = false,
            icon = "doom3.xpm",
            commandline = "%0/doom3",
            category = "Game",
        },

        Setup.File
        {
            wildcards = { "base/*", "version.info", "doom3.xpm", "README", "CHANGES" },
        },

        Setup.File
        {
            source = "base:///bin.tar.xz",
        },

        Setup.File
        {
            source = "media://disc1/Setup/Data/base/",
            destination = "base",
            wildcards = "pak002.pk4",
        },

        Setup.File
        {
            source = "media://disc2/Setup/Data/base/",
            destination = "base",
            wildcards = { "pak000.pk4", "pak001.pk4" },
        },

        Setup.File
        {
            source = "media://disc3/Setup/Data/base/",
            destination = "base",
            wildcards = { "pak003.pk4", "pak004.pk4" },
        },
    },

    Setup.Option
    {
        value = true,
        required = false,
        bytes = 541065216,
        description = "Install addon Doom III: Resurrection of Evil",
        tooltip = "Needs the Doom III: Resurrection of Evil-CDROM",

        Setup.DesktopMenuItem
        {
            disabled = false,
            name = "Doom III - Resurrection of Evil" ,
            genericname = "Play Doom III - Resurrection of Evil",
            tooltip = "Play Doom III - Resurrection of Evil",
            builtin_icon = false,
            icon = "doom3.xpm",
            commandline = "%0/doom3xp",
            category = "Game",
        },

        Setup.File
        {
            wildcards = { "d3xp/*", "doom3xp.xpm" }
        },

        Setup.File
        {
            source = "base:///bin_xp.tar.xz",
        },

        Setup.File
        {
            source = "media://discxp/Setup/Data/d3xp/",
            destination = "d3xp",
            wildcards = "pak000.pk4",
        },
    },

    Setup.Option
    {
        value = true,
        required = false,
        bytes = 5482259,
        description = "Punkbuster",

        Setup.File
        {
            wildcards = { "pb/*" }
        },

        Setup.Eula
        {
            source = "pb/PB_EULA.txt",
            description = "Punkbuster EULA",
        },
    },
}

