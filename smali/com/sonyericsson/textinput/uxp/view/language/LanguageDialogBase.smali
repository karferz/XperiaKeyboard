.class public Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;
.super Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;
.source "LanguageDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_LANGUAGE_ISO3:Ljava/lang/String;

.field private static final BUNDLE_SHOW_REASON:Ljava/lang/String;


# instance fields
.field private mIsConfirmed:Z

.field private mLanguageIso3:Ljava/lang/String;

.field private mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mShowReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Language_iso_3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->BUNDLE_LANGUAGE_ISO3:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_show_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->BUNDLE_SHOW_REASON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;-><init>()V

    return-void
.end method

.method protected static createBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "languageIso3"    # Ljava/lang/String;
    .param p1, "showReason"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->BUNDLE_LANGUAGE_ISO3:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->BUNDLE_SHOW_REASON:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method protected getDialogConfirmationListener()Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method protected getLanguageIso3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mLanguageIso3:Ljava/lang/String;

    return-object v0
.end method

.method protected getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    return-object v0
.end method

.method protected getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    return-object v0
.end method

.method protected getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method protected getShowReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mShowReason:Ljava/lang/String;

    return-object v0
.end method

.method protected isConfirmed()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mIsConfirmed:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;->onAttach(Landroid/app/Activity;)V

    .line 73
    instance-of v0, p1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DialogConfirmationListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/DialogBase;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->BUNDLE_LANGUAGE_ISO3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mLanguageIso3:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->BUNDLE_SHOW_REASON:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mShowReason:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 88
    .local v0, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 89
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 90
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 91
    return-void
.end method

.method protected setIsConfirmed(Z)V
    .locals 0
    .param p1, "mConfirm"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->mIsConfirmed:Z

    .line 68
    return-void
.end method
