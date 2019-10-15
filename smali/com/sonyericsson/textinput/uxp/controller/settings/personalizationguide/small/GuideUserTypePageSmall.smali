.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;
.super Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.source "GuideUserTypePageSmall.java"


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private final mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .param p5, "application"    # Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 29
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 40
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;Landroid/content/res/Resources;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;
    .param p1, "x1"    # Landroid/content/res/Resources;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->updateSelectionMode(Landroid/content/res/Resources;I)V

    return-void
.end method

.method private updateSelectionMode(Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 44
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 45
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const-string v1, ""

    .line 46
    .local v1, "mode":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 59
    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPredictionMode(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushWordSuggestionEvent(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 66
    return-void

    .line 48
    :pswitch_0
    const v2, 0x7f0701f6

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    const v2, 0x7f0701f2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    const v2, 0x7f0701f7

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f009d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 70
    const v4, 0x7f03001a

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f009c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 73
    .local v2, "rg":Landroid/widget/RadioGroup;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 74
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideUserTypePageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "predictionMode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0701f6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const v4, 0x7f0f009d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 79
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const v4, 0x7f0701f2

    .line 81
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    const v4, 0x7f0f009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 83
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 84
    :cond_2
    const v4, 0x7f0701f7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const v4, 0x7f0f009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f070096

    return v0
.end method

.method public showKeyboard()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
