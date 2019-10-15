.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;
.super Landroid/app/Fragment;
.source "PrivacyPolicyAboutFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_FragmentPrivacyPolicyAbout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    .line 57
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 59
    const v4, 0x7f030040

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f00dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    .local v2, "policyText":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    :cond_0
    const v4, 0x7f0f00de

    .line 68
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    .local v0, "checkBoxAndText":Landroid/view/ViewGroup;
    const v4, 0x7f0f00e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    .local v1, "googleLoginButton":Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 72
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;->doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAboutFragment;->doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 52
    return-object v0
.end method
