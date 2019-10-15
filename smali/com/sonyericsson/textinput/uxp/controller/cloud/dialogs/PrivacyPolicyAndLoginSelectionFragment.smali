.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;
.super Landroid/app/Fragment;
.source "PrivacyPolicyAndLoginSelectionFragment.java"


# static fields
.field private static final BUTTON_DIMMED_ALPHA:I = 0x59

.field private static final BUTTON_FULLY_VISIBLE_ALPHA:I = 0xff

.field private static final KEY_CHECKBOX:Ljava/lang/String; = "checkbox"

.field public static final KEY_CLOUD_LOGIN_TYPE:Ljava/lang/String; = "cloud_login_type"

.field public static final TAG:Ljava/lang/String; = "TI_FragmentPrivacyPolicyAndLoginSelection"


# instance fields
.field private mIsChecked:Z

.field private mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->confirmLoginType(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Landroid/widget/Button;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->enableButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private confirmLoginType(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)V
    .locals 4
    .param p1, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "returnBundle":Landroid/os/Bundle;
    const-string v1, "cloud_login_type"

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->getUserConfirmationListener()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;

    move-result-object v1

    const-string v2, "TI_FragmentPrivacyPolicyAndLoginSelection"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;->onUserConfirmation(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 134
    return-void
.end method

.method private doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 85
    const v4, 0x7f030040

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f00de

    .line 87
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    .local v0, "checkBoxAndText":Landroid/view/ViewGroup;
    const v4, 0x7f0f00dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, "policyText":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 95
    :cond_0
    const v4, 0x7f0f00e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, "googleLoginButton":Landroid/widget/Button;
    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->enableButton(Landroid/widget/Button;Z)V

    .line 104
    const v4, 0x7f0f00df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;

    .line 105
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;

    invoke-direct {v5, p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment$3;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    if-eq v4, v5, :cond_1

    .line 125
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    :cond_1
    return-void
.end method

.method private enableButton(Landroid/widget/Button;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enabled"    # Z

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public static newInstance()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getUserConfirmationListener()Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/UserConfirmationListener;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    if-eqz p3, :cond_0

    .line 75
    const-string v1, "checkbox"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsChecked:Z

    .line 77
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->doCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 79
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "checkbox"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/PrivacyPolicyAndLoginSelectionFragment;->mIsPolicyAgreedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method
