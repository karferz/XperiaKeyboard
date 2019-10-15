.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideLanguagePageLarge;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;
.source "UpgradeGuideLanguagePageLarge.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;Z)V
    .locals 0
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .param p5, "fragment"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
    .param p6, "showUpgradeText"    # Z

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method protected addAdditionalOptions(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 30
    return-void
.end method

.method protected setAdditionalOptionsVisibility()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected toggleSecondaryPrintsWarning()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
