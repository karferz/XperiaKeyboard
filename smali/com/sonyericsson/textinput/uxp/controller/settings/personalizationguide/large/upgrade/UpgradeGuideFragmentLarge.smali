.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideFragmentLarge;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
.source "UpgradeGuideFragmentLarge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupPages(Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .locals 8
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p3, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p4, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;",
            ">;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;>;"
    const/4 v6, 0x1

    .line 25
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideLanguagePageLarge;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideLanguagePageLarge;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;Z)V

    .line 28
    .local v0, "guideLanguagePageLarge":Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideLanguagePageLarge;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/upgrade/UpgradeGuideFragmentLarge;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToLearnWritingStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    new-instance v7, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    invoke-direct {v7, p2, p3, p4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 33
    .local v7, "guideLearnWritingStylePage":Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;
    invoke-virtual {v7, v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->setShowUpgradeText(Z)V

    .line 34
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v7    # "guideLearnWritingStylePage":Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;
    :cond_0
    return-void
.end method
