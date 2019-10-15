.class public Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;
.super Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;
.source "DialogUpdateConfirmation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_DialogUpdateConfirmation"


# instance fields
.field private mAutoUpdateCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;-><init>()V

    return-void
.end method

.method private isAutoDownloadActive()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAutoDictionaryUpdateMode()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->OFF:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;
    .locals 2
    .param p0, "languageIso3"    # Ljava/lang/String;
    .param p1, "showReason"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;-><init>()V

    .line 36
    .local v1, "dialogConfirmation":Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->createBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->isAutoDownloadActive()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 64
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ANY_TIME:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    :goto_0
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setAutoDictionaryUpdateMode(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;)V

    .line 66
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 69
    .end local v0    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->onDismiss(Landroid/content/DialogInterface;)V

    .line 70
    return-void

    .line 64
    .restart local v0    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->OFF:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    goto :goto_0
.end method

.method protected prepareLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogDownloadConfirmation;->prepareLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0f00c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "contentTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0700dd

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    .line 51
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 52
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->isAutoDownloadActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/DialogUpdateConfirmation;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f070056

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 55
    return-object v1

    .line 46
    :cond_0
    const v2, 0x7f0700df

    goto :goto_0
.end method
