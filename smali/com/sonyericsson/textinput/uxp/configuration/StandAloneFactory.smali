.class public final Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;
.super Ljava/lang/Object;
.source "StandAloneFactory.java"


# static fields
.field private static sRandomSettings:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/settings/Customization$Factory;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization$Factory;-><init>()V

    .line 102
    .local v1, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    invoke-virtual {v1}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    .line 103
    .local v0, "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    const-class v2, Landroid/content/Context;

    invoke-virtual {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 104
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->init()V

    .line 105
    return-object v0
.end method

.method public static createDefaultResourceLookupProvider(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customization"    # Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    .prologue
    .line 139
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;-><init>()V

    .line 140
    .local v0, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    const-string v2, "floating-keyboard-type"

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "enable-one-handed-keyboard"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    .line 145
    .local v1, "resourceLookupProvider":Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 146
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 147
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->init()V

    .line 148
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->initOptional()V

    .line 149
    return-object v1
.end method

.method public static createLanguageController(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "config"    # Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;
    .param p4, "inputMethod"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;-><init>()V

    .line 71
    .local v0, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    const-string v2, "current-input-method"

    invoke-virtual {v0, v2, p4}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    .line 73
    .local v1, "languageController":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 74
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 75
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v1, p2, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 76
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-virtual {v1, p3, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 77
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->init()V

    .line 78
    return-object v1
.end method

.method public static createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customization"    # Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;Z)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v0

    return-object v0
.end method

.method public static createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;Z)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customization"    # Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;
    .param p2, "useCache"    # Z

    .prologue
    .line 91
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$Factory;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$Factory;-><init>()V

    .line 92
    .local v1, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    invoke-virtual {v1}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 93
    .local v0, "config":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->setUseCache(Z)V

    .line 94
    const-class v2, Landroid/content/Context;

    invoke-virtual {v0, p0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 95
    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->init()V

    .line 97
    return-object v0
.end method

.method public static createLanguageSettings(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "config"    # Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;
    .param p3, "swiftKeyLanguagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 52
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V

    .line 54
    .local v0, "languageSettings":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->init()V

    .line 55
    return-object v0
.end method

.method public static createMonkeySettings(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    .line 122
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->sRandomSettings:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->sRandomSettings:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    .line 128
    :goto_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->sRandomSettings:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    return-object v0

    .line 126
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->sRandomSettings:Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->reinitSettings(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/Settings;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->init()V

    .line 111
    return-object v0
.end method

.method public static createSizeAndScaleProvider(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
    .param p2, "inputMethod"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSizeAndScaleProvider(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;Ljava/lang/String;Z)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    move-result-object v0

    return-object v0
.end method

.method public static createSizeAndScaleProvider(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;Ljava/lang/String;Z)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
    .param p2, "inputMethod"    # Ljava/lang/String;
    .param p3, "isNumericKeysEnabled"    # Z

    .prologue
    .line 165
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;-><init>()V

    .line 166
    .local v0, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    const-string v2, "enable-numeric-keys"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "current-input-method"

    invoke-virtual {v0, v2, p2}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .line 171
    .local v1, "sizeAndScaleProvider":Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 172
    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 173
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->init()V

    .line 174
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->initOptional()V

    .line 176
    return-object v1
.end method

.method public static createSkin(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .locals 4
    .param p0, "skinName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 190
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :sswitch_0
    const-string v2, "skin-themed"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "skin-dark"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "skin-light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "skin-classic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "skin-xperia-blue"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "skin-xperia-green"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "skin-xperia-pink"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "skin-xperia-purple"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 192
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;-><init>()V

    .line 219
    .local v0, "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :goto_1
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 220
    check-cast v1, Lcom/sonyericsson/collaboration/ManagedBindable;

    const-class v2, Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Lcom/sonyericsson/collaboration/ManagedBindable;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 222
    :cond_1
    return-object v0

    .line 195
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinDark;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinDark;-><init>()V

    .line 196
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 198
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;-><init>()V

    .line 199
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 201
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;-><init>()V

    .line 202
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 204
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;-><init>()V

    .line 205
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 207
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_5
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaGreen;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaGreen;-><init>()V

    .line 208
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 210
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_6
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPink;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPink;-><init>()V

    .line 211
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 213
    .end local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    :pswitch_7
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;-><init>()V

    .line 214
    .restart local v0    # "result":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    goto :goto_1

    .line 190
    :sswitch_data_0
    .sparse-switch
        -0x776aedf5 -> :sswitch_0
        -0x35ac4244 -> :sswitch_7
        0xd613442 -> :sswitch_3
        0x24f2665a -> :sswitch_4
        0x24f8b776 -> :sswitch_6
        0x5ece5cc6 -> :sswitch_2
        0x76a811c6 -> :sswitch_1
        0x79a35903 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static createSwiftKeyLanguagePackHandler(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    .line 60
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 62
    .local v0, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    return-object v0
.end method

.method public static createWhiteListDatabase()Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;-><init>()V

    return-object v0
.end method

.method public static unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V
    .locals 2
    .param p0, "customization"    # Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->dispose()V

    .line 242
    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 243
    return-void
.end method

.method public static unbindLanguageController(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;)V
    .locals 2
    .param p0, "languageController"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->dispose()V

    .line 272
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 273
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 274
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 275
    return-void
.end method

.method public static unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .locals 2
    .param p0, "config"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    const/4 v1, 0x0

    .line 266
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 267
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 268
    return-void
.end method

.method public static unbindLanguageSettings(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V
    .locals 0
    .param p0, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .prologue
    .line 279
    return-void
.end method

.method public static unbindResourceLookupProvider(Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;)V
    .locals 2
    .param p0, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->dispose()V

    .line 227
    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 228
    return-void
.end method

.method public static unbindSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 3
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 246
    instance-of v1, p0, Lcom/sonyericsson/collaboration/ManagedBindable;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 247
    check-cast v0, Lcom/sonyericsson/collaboration/ManagedBindable;

    .line 248
    .local v0, "bindable":Lcom/sonyericsson/collaboration/ManagedBindable;
    invoke-interface {v0}, Lcom/sonyericsson/collaboration/ManagedBindable;->dispose()V

    .line 249
    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/collaboration/ManagedBindable;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 251
    .end local v0    # "bindable":Lcom/sonyericsson/collaboration/ManagedBindable;
    :cond_0
    return-void
.end method

.method public static unbindSizeAndScaleProvider(Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;)V
    .locals 2
    .param p0, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->dispose()V

    .line 232
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 233
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 234
    return-void
.end method

.method public static unbindSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 0
    .param p0, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 238
    return-void
.end method

.method public static unbindSwiftKeyLanguagePackHandler(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V
    .locals 0
    .param p0, "swiftKeyLanguagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->dispose()V

    .line 256
    return-void
.end method

.method public static unbindwhiteListDatabase(Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;)V
    .locals 2
    .param p0, "whiteListDatabase"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    .prologue
    .line 259
    instance-of v1, p0, Lcom/sonyericsson/collaboration/ManagedBindable;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 260
    check-cast v0, Lcom/sonyericsson/collaboration/ManagedBindable;

    .line 261
    .local v0, "bindable":Lcom/sonyericsson/collaboration/ManagedBindable;
    invoke-interface {v0}, Lcom/sonyericsson/collaboration/ManagedBindable;->dispose()V

    .line 263
    .end local v0    # "bindable":Lcom/sonyericsson/collaboration/ManagedBindable;
    :cond_0
    return-void
.end method
