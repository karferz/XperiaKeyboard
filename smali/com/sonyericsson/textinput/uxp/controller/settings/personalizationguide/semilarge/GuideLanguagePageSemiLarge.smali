.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/semilarge/GuideLanguagePageSemiLarge;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;
.source "GuideLanguagePageSemiLarge.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V
    .locals 7
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .param p5, "fragment"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .prologue
    .line 21
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public showKeyboard()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/semilarge/GuideLanguagePageSemiLarge;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
