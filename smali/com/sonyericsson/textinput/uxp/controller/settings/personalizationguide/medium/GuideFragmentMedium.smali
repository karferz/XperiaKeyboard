.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideFragmentMedium;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
.source "GuideFragmentMedium.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupPages(Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .locals 6
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
    .line 30
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;

    .line 31
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideFragmentMedium;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideFragmentMedium;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToLearnWritingStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    invoke-direct {v0, p2, p3, p4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFinishPageSmall;

    invoke-direct {v0, p2, p3, p4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFinishPageSmall;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
