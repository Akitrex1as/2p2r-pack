#sideonly client
// 2P2R: creative tab cleanup, moved out of recipes.zs. Tabulator reads tab labels, which exist only on the client:
// on a dedicated server this aborted recipes.zs at the first Tabs call, so the recipes after it were never added there.
import mods.tabulator.Tabs;

Tabs.removeTab("materials.base");
Tabs.remove(<galaxyspace:gs_basic:30>);
Tabs.remove(<galaxyspace:plasma_axe>);
Tabs.remove(<galaxyspace:plasma_pickaxe>);
Tabs.remove(<galaxyspace:plasma_sword>);
Tabs.remove(<galaxyspace:mars_rover>);
Tabs.remove(<galaxyspace:gs_basic:19>);
Tabs.remove(<galaxyspace:gs_basic:29>);
Tabs.remove(<galaxyspace:gs_basic:31>);
Tabs.remove(<galaxyspace:gs_basic:32>);
Tabs.remove(<galaxyspace:rocket_modules:7>);
Tabs.remove(<galaxyspace:rocket_modules:5>);  
Tabs.remove(<galaxyspace:schematics:6>);
Tabs.remove(<adchimneys:elder_prismarine_brick>);
Tabs.remove(<adchimneys:elder_prismarine_brick:1>);
Tabs.remove(<adchimneys:elder_prismarine_brick:2>);
Tabs.remove(<adchimneys:smoker>);
Tabs.remove(<galaxyspace:surface_ice:2>);
Tabs.remove(<galaxyspace:surface_ice:3>);
Tabs.remove(<galaxyspace:gs_basic:25>);
Tabs.remove(<galaxyspace:gs_basic:26>);
Tabs.remove(<usefulrailroads:rail_teleport>);
Tabs.remove(<usefulrailroads:rail_direction>);
Tabs.remove(<adchimneys:magma_brick>);
Tabs.remove(<adchimneys:magma_brick:1>);
Tabs.remove(<adchimneys:magma_brick:2>);
