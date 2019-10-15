.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFragmentSmall;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
.source "GuideFragmentSmall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupPages(Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .locals 7
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
    .line 26
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFragmentSmall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideLanguagePageSmall;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;Z)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFragmentSmall;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToLearnWritingStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    invoke-direct {v0, p2, p3, p4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;

    invoke-direct {v0, p2, p3, p4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFinishPageSmall;

    invoke-direct {v0, p2, p3, p4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFinishPageSmall;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
