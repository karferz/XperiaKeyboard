.class public Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;
.super Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;
.source "DialogDownloadConfirmation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_DialogDownloadConfirmation"


# instance fields
.field private mIsNetworkAvailable:Z

.field private mWaitForWiFiCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;
    .locals 2
    .param p0, "languageIso3"    # Ljava/lang/String;
    .param p1, "showReason"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;-><init>()V

    .line 35
    .local v1, "dialogConfirmation":Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->createBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method protected isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mIsNetworkAvailable:Z

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 44
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasNetworkConnection(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mIsNetworkAvailable:Z

    .line 46
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->prepareLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "layout":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 51
    const v3, 0x7f070018

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    const v3, 0x7f07001c

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, "isWaitingForWiFi":Z
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 97
    .local v2, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setIsWaitForWifiCheckboxChecked(Z)V

    .line 98
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 101
    .end local v2    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    const/4 v5, 0x0

    .line 104
    .local v5, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 106
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v5

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->isConfirmed()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadWaitingForWiFi(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->isConfirmed()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mIsNetworkAvailable:Z

    if-nez v6, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadWaitingForNetwork(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getDialogConfirmationListener()Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;

    move-result-object v1

    .line 123
    .local v1, "dialogConfirmationListener":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;
    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->isConfirmed()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mIsNetworkAvailable:Z

    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    .line 126
    .local v4, "shouldDownloadDirectly":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 127
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->USER_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v9

    .line 127
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadPendingVerifyAndRefresh(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 133
    :cond_3
    const-string v6, "TI_DialogDownloadConfirmation"

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getLanguageIso3()Ljava/lang/String;

    move-result-object v7

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getShowReason()Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-interface {v1, v6, v7, v8, v4}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;->onDialogConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    .end local v4    # "shouldDownloadDirectly":Z
    :cond_4
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->onDismiss(Landroid/content/DialogInterface;)V

    .line 139
    return-void

    .line 124
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected prepareLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 62
    const v3, 0x7f03002f

    const/4 v5, 0x0

    invoke-static {p1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasWifiConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 67
    .local v1, "isWiFiAvailable":Z
    :goto_0
    const v3, 0x7f0f00c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, "contentTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0700d8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 75
    const v3, 0x7f0f00c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    .line 76
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getIsWaitForWifiCheckboxChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->mWaitForWiFiCheckBox:Landroid/widget/CheckBox;

    const v4, 0x7f070064

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 81
    :cond_0
    return-object v2

    .end local v0    # "contentTextView":Landroid/widget/TextView;
    .end local v1    # "isWiFiAvailable":Z
    :cond_1
    move v1, v4

    .line 64
    goto :goto_0

    .line 70
    .restart local v0    # "contentTextView":Landroid/widget/TextView;
    .restart local v1    # "isWiFiAvailable":Z
    :cond_2
    const v3, 0x7f0700da

    goto :goto_1
.end method
