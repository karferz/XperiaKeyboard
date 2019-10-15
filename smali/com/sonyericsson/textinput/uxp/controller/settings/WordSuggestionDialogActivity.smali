.class public Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;
.super Landroid/app/Activity;
.source "WordSuggestionDialogActivity.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_TAG:Ljava/lang/String; = "SimpleDialog"

.field private static final KEY_MENU_OPTIONS:Ljava/lang/String; = "menu_options"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getEntryLabels(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEntryValues(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "menu_options"

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getEntryLabels(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 55
    const-string v3, "menu_options"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "menuOptions":[Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->newInstance([Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/controller/settings/OnSimpleMenuItemSelectedListener;)Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;

    move-result-object v0

    .line 60
    .local v0, "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "SimpleDialog"

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    .end local v0    # "fragment":Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleDialogFragment;
    .end local v2    # "menuOptions":[Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 7
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    .line 75
    .local v5, "settingsValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getEntryLabels(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "entryLabels":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    .line 77
    aget-object v6, v3, v4

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getEntryValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, v4

    .line 76
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_1
    if-nez v5, :cond_2

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/WordSuggestionDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 85
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 86
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 87
    .local v2, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v2, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPredictionMode(Ljava/lang/String;)V

    .line 88
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 93
    .end local v2    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_3
    return-void
.end method
