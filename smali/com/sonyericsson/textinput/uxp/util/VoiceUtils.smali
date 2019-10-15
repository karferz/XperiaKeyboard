.class public abstract Lcom/sonyericsson/textinput/uxp/util/VoiceUtils;
.super Ljava/lang/Object;
.source "VoiceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLanguagesSupportingVoiceInput(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    .line 37
    const/4 v11, 0x0

    .line 39
    .local v11, "returnValue":Z
    const-string v7, "full"

    .line 40
    .local v7, "inputMethod":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboardMode()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 41
    const-string v7, "multitap"

    .line 45
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v7}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageController(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    move-result-object v8

    .line 50
    .local v8, "languageController":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->getVoiceInputSupportedLocales()Ljava/util/ArrayList;

    move-result-object v14

    .line 51
    .local v14, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_3

    .line 52
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v5

    .line 53
    .local v5, "activatedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    if-nez v11, :cond_3

    .line 54
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "locale":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 57
    const/4 v15, 0x0

    aget-object v15, v10, v15

    .line 58
    invoke-static {v15}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->iso2LanguageToIso3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "voiceInputIso3":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/ned/model/ILanguage;

    .line 60
    .local v4, "activatedLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "languageIso3":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->iso3LanguageToStrictIso3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 63
    .local v12, "strictLanguageIso3":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 64
    const/4 v11, 0x1

    .line 53
    .end local v4    # "activatedLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v9    # "languageIso3":Ljava/lang/String;
    .end local v12    # "strictLanguageIso3":Ljava/lang/String;
    .end local v13    # "voiceInputIso3":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 72
    .end local v5    # "activatedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    .end local v6    # "i":I
    .end local v10    # "locale":[Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageController(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;)V

    .line 74
    return v11
.end method

.method public static isVoiceSupported(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVoiceInputEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/util/VoiceUtils;->isLanguagesSupportingVoiceInput(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
