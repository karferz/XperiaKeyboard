.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;
.source "GuideLanguagePageSmall.java"


# instance fields
.field private final mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;


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
    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Landroid/app/Fragment;Z)V

    .line 27
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .line 28
    return-void
.end method


# virtual methods
.method public getTitleId()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f07007e

    return v0
.end method

.method protected isInList()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected onLeaveContinue(Z)V
    .locals 1
    .param p1, "saved"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onSettingUpdated()V

    .line 38
    return-void
.end method

.method protected onLeaveExit(Z)V
    .locals 1
    .param p1, "saved"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onSettingUpdated()V

    .line 45
    :cond_0
    return-void
.end method

.method protected onSettingsUpdated()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onSettingUpdated()V

    .line 33
    return-void
.end method
