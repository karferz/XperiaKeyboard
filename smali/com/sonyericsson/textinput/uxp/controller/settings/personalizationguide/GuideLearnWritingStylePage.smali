.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;
.super Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.source "GuideLearnWritingStylePage.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShowUpgradeText:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mShowUpgradeText:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->startPersonalizerSettingsActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->handleBackupAndSyncButtonClick()V

    return-void
.end method

.method private authenticateBackupAndSyncAccount()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method private handleBackupAndSyncButtonClick()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->authenticateBackupAndSyncAccount()V

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    const v1, 0x7f0700f2

    const/4 v2, 0x1

    .line 117
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->makeToastIfNeededAndShow(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private refreshView()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 65
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mView:Landroid/view/View;

    const v7, 0x7f0f0094

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "upgradeLearnWritingStyleText":Landroid/view/View;
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mShowUpgradeText:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mView:Landroid/view/View;

    const v7, 0x7f0f0093

    .line 70
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, "learnWritingStyleTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasSmsCapabilities(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f070085

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mView:Landroid/view/View;

    const v7, 0x7f0f0099

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 78
    .local v1, "backupAndSyncButton":Landroid/widget/Button;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mView:Landroid/view/View;

    const v7, 0x7f0f009a

    .line 79
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "backupAndSyncActivatedText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_2
    return-void

    .end local v0    # "backupAndSyncActivatedText":Landroid/widget/TextView;
    .end local v1    # "backupAndSyncButton":Landroid/widget/Button;
    .end local v2    # "learnWritingStyleTextView":Landroid/widget/TextView;
    :cond_0
    move v4, v6

    .line 67
    goto :goto_0

    .line 72
    .restart local v2    # "learnWritingStyleTextView":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f070087

    goto :goto_1

    .line 84
    .restart local v0    # "backupAndSyncActivatedText":Landroid/widget/TextView;
    .restart local v1    # "backupAndSyncButton":Landroid/widget/Button;
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private startPersonalizerSettingsActivity()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    const-string v1, "remove-delete-option"

    const-string v2, "restricted-personalization"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    const v1, 0x7f030018

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mView:Landroid/view/View;

    .line 50
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mView:Landroid/view/View;

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->refreshView()V

    .line 61
    return-void
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f0700e6

    return v0
.end method

.method public onSettingsChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_BACKUP_AND_SYNC:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->refreshView()V

    .line 100
    :cond_0
    return-void
.end method

.method public setShowUpgradeText(Z)V
    .locals 0
    .param p1, "showUpgradeText"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->mShowUpgradeText:Z

    .line 142
    return-void
.end method

.method public showKeyboard()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
