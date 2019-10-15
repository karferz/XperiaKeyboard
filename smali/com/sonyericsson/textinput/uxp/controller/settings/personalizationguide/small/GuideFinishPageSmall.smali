.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFinishPageSmall;
.super Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.source "GuideFinishPageSmall.java"


# static fields
.field private static final SPANNABLE_IMAGE:Ljava/lang/String; = "@drawable/icon"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V
    .locals 0
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 30
    return-void
.end method

.method private createMessage(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const v5, 0x7f070077

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .local v4, "string":Landroid/text/SpannableString;
    const-string v5, "@drawable/icon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 37
    .local v3, "start":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 38
    const-string v5, "@drawable/icon"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v3, v5

    .line 39
    .local v0, "end":I
    new-instance v2, Landroid/text/style/ImageSpan;

    const v5, 0x7f02004b

    invoke-direct {v2, p1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 40
    .local v2, "span":Landroid/text/style/ImageSpan;
    const/16 v5, 0x11

    invoke-virtual {v4, v2, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 42
    .end local v0    # "end":I
    .end local v2    # "span":Landroid/text/style/ImageSpan;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    const v2, 0x7f030017

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideFinishPageSmall;->createMessage(Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v0

    .line 49
    .local v0, "string":Landroid/text/SpannableString;
    const v2, 0x7f0f008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f070078

    return v0
.end method

.method public showKeyboard()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
