# Wannaroo Basic Industries (WRBI)

NewGRF for OpenTTD - Industry set based on frosch's Manual Industries 2r5. Supports 16 cargos in/out. Adds some new industries, cargos, and cargo chains.

1. About

    Based on frosch's Manual Industries 2-r5, Wannaroo Basic Industries supports 16 cargos in/out and adds some new industries, cargos, and cargo chains in an attempt to make the default industries more interesting. Temperate, Arctic, Tropic industries are updated, no changes to Toyland.

1. Compatibility

    Wannaroo Basic Industries is unlikely to be compatible with any other industry set. No checks are carried out when starting a game. Load multiple industry sets at your own risk.

    Compatibility with any newgrf is not guaranteed. No warranties are expressed or implied.

    Cargos can have multiple destinations; this may affect AIs, Game Scripts, and cargodist (none of which I generally use and haven't tested against).

    Requirements: OpenTTD 1.9.0 or later, vehicle sets that support new cargos.

1. Features

    * New cargos: Alcohol, Building Materials, Chemicals, Copper, Lumber, Petrol, Plastic, Recyclables, Stone, Waste

    * New industries: Recycling Depot, Recycling Plant, Shop, Superstore

    * Modified Industries:

        * Temperate: Bank, Coal Mine, Factory, Food Processing Plant, Forest (layouts only), Iron Ore Mine, Lumber Mill, Power Plant, Refinery, Sawmill, Steel Mill

        * Arctic: Bank, Coal Mine, Factory (was Printing Works), Food Processing Plant, Forest (layouts only), Gold Mine, Lumber Mill, Paper Mill, Power Plant, Refinery, Sawmill

        * Tropic: Bank, Copper Ore Mine, Diamond Mine, Factory, Food Processing Plant, Forest, Power Plant, Refinery

    * Other features: Houses can accept Passengers, Mail, Goods, Food, Building Materials, Water. 

    * Parameters: hopefully are self-explanatory
    
    * [Industry Matrix](https://htmlpreview.github.io/?https://github.com/jrook1445/wannaroo-basic-industries/blob/master/src/docs/wrbi_industries.html)

1. Development

    The usual pnml/nml files with C includes and macros.

    However, house cargo acceptance modifications are done in nfo.

    Additional steps to create houses.nfo:
        
    1) generate wannaroo-basic-industries-part.nfo code from wannaroo-basic-industries.nml via nmlc        
    2) update sprite numbers in docs/wrbi_house_defaults_food_good_bdmt_all_climates.ods        
    3) copy/paste house sprites into houses.nfo        

    I built this newgrf on Linux Mint 19.3 using gcc version 7.5.0, NML version 0.5.0, and grfcodec version 6.0.6 r991.

1. Licence

    GPL v2

1. Credits

    Author of this newgrf: jrook1445 (https://github.com/jrook1445)

    Source code: https://github.com/jrook1445/wannaroo-basic-industries

    Credit and Acknowledgements (with sincere thanks and appreciation):
    
    Manual Industries 2-r5: base industry code: frosch123, https://github.com/frosch123/ManualIndustries2

    OpenGFX: re-use of base set sprites: all contributors/developers as listed in 6.0 Credits, https://github.com/OpenTTD/OpenGFX/blob/master/README.md

    FIRS 3: industry and cargo colours, cargo definitions, cargo icons; ideas for industry location checks: andythenorth et. al. as listed in credits.txt, http://bundles.openttdcoop.org/firs/releases/3.0.12/credits.txt

    OpenGFX+ Industries 0.3.5: forest sprite layouts, forest tile animations, and tree sprites; shop gfx and original shop nml; cargo definitions; ideas for C macros and industry location checks: Ingo von Borstel (aka planetmaker) et. al. as listed in readme.ptxt, https://dev.openttdcoop.org/projects/ogfx-industries/repository/entry/docs/readme.ptxt

    ECS industry extension: ideas for C macros and industry location checks: Maciej Czapkiewicz (aka McZapkie), https://dev.openttdcoop.org/projects/ecs-industry-extension

    NML and NFO: with many thanks to all the developers/contributors of NML, NFO, and the documentation/newgrf spec website at https://newgrf-specs.tt-wiki.net/wiki/Main_Page

    Inspiration: Manual Industries, PBI, FIRS, OpenGFX+ Industries

:peace_symbol:

