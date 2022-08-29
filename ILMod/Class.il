.assembly ILMod
{
  .ver 1:0:0:0
}

.module ILMod.dll

// Define our mod class.
.class public auto ansi beforefieldinit ILMod.ILMod
    extends [tModLoader]Terraria.ModLoader.Mod // Make sure it extends Terraria.ModLoader.Mod
{
// region METHODS

    // Define the constructor (.ctor)
    // This is VITAL, otherwise the mod cannot be instantiated by tModLoader.
    .method public hidebysig specialname rtspecialname instance void .ctor () cil managed
    {
        ldarg.0 // push `this`
        call instance void [tModLoader]Terraria.ModLoader.Mod::.ctor() // invoke base constructor (Terraria.ModLoader.Mod::.ctor)
        
        ret // return
    }

    // Hook override example:
    // Demonstration of overriding Mod::Load
    .method public hidebysig virtual instance void Load () cil managed   
    {
        ldarg.0 // push `this`
        call instance void [tModLoader]Terraria.ModLoader.Mod::Load() // base.Load()
        
        ldarg.0 // push `this
        call instance class [log4net]log4net.ILog [tModLoader]Terraria.ModLoader.Mod::get_Logger() // Get this mod's logger
        ldstr "Hello from ILMod!" // push "Hello from ILMod!"
        callvirt instance void [log4net]log4net.ILog::Info(object) // Log "Hello from ILMod!"
        
        ret // return 
    }

// endregion METHODS
}