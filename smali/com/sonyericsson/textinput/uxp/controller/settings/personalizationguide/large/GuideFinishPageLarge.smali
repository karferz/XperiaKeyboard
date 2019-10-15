.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;
.super Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.source "GuideFinishPageLarge.java"


# static fields
.field private static final SPANNABLE_IMAGE:Ljava/lang/String; = "@drawable/icon"


# instance fields
.field private mConfigImage:Landroid/widget/ImageView;

.field private mConfigImageWithTrace:Landroid/widget/ImageView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 34
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->showConfigImage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mPageListener:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    return-object v0
.end method

.method private createMessage(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const v5, 0x7f070077

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v4, "string":Landroid/text/SpannableString;
    const-string v5, "@drawable/icon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, "start":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 70
    const-string v5, "@drawable/icon"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v3, v5

    .line 71
    .local v0, "end":I
    new-instance v2, Landroid/text/style/ImageSpan;

    const v5, 0x7f02004b

    invoke-direct {v2, p1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v2, "span":Landroid/text/style/ImageSpan;
    const/16 v5, 0x11

    invoke-virtual {v4, v2, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 74
    .end local v0    # "end":I
    .end local v2    # "span":Landroid/text/style/ImageSpan;
    :cond_0
    return-object v4
.end method

.method private showConfigImage(Z)V
    .locals 3
    .param p1, "isTraceEnabled"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mConfigImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mConfigImageWithTrace:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mConfigImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mConfigImageWithTrace:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    const v5, 0x7f030017

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->createMessage(Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v1

    .line 91
    .local v1, "string":Landroid/text/SpannableString;
    const v5, 0x7f0f008f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v5, 0x7f0f0092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 94
    .local v2, "traceCheckbox":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTraceEnabled()Z

    move-result v0

    .line 95
    .local v0, "isTraceEnabled":Z
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    const v5, 0x7f0f0091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, "traceCheckboxLine":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v5, 0x7f0f0090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mConfigImage:Landroid/widget/ImageView;

    .line 101
    const v5, 0x7f0f008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->mConfigImageWithTrace:Landroid/widget/ImageView;

    .line 102
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideFinishPageLarge;->showConfigImage(Z)V

    .line 103
    return-void
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f070078

    return v0
.end method

.method public showKeyboard()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
