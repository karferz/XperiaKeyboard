.class public Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;
.super Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;
.source "LayoutPicker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TI_LayoutPicker"


# instance fields
.field private mPreviousLayoutSelectedPosition:I

.field private mSelectableLayoutNames:[Ljava/lang/String;

.field private mSelectableLayouts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectedIndex:I

    return p1
.end method

.method private commitSelectedLayout()V
    .locals 6

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->isConfirmed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectedIndex:I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mPreviousLayoutSelectedPosition:I

    if-eq v2, v3, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getSelectedLayoutId()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "layoutId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageIso3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->changeActiveLanguageLayoutId(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "layoutId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getDialogConfirmationListener()Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;

    move-result-object v0

    .line 102
    .local v0, "dialogConfirmationListener":Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;
    if-eqz v0, :cond_1

    .line 103
    const-string v2, "TI_LayoutPicker"

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageIso3()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getShowReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->isConfirmed()Z

    move-result v5

    .line 103
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;->onDialogConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    :cond_1
    return-void
.end method

.method private getLanguageDataLayoutSelectedPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "previousLanguageDataLayoutId"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v1, -0x1

    .line 76
    .local v1, "languageDataLayoutSelectedPosition":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method private getSelectedLayoutId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "layoutId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, "position":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectedIndex:I

    if-ne v2, v4, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "layoutId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "layoutId":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 116
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 117
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;
    .locals 2
    .param p0, "languageIso3"    # Ljava/lang/String;
    .param p1, "showReason"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;-><init>()V

    .line 33
    .local v1, "layoutPicker":Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->createBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->setIsConfirmed(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageIso3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getSelectableLayouts(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayouts:Ljava/util/LinkedHashMap;

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v4

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageIso3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayoutId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "previousLanguageDataLayoutId":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getLanguageDataLayoutSelectedPosition(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "languageDataLayoutSelectedPosition":I
    if-ltz v1, :cond_0

    move v3, v1

    :cond_0
    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mPreviousLayoutSelectedPosition:I

    .line 50
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mPreviousLayoutSelectedPosition:I

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectedIndex:I

    .line 52
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayouts:Ljava/util/LinkedHashMap;

    .line 53
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 52
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayoutNames:[Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700e0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 56
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->mSelectableLayoutNames:[Ljava/lang/String;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const v3, 0x7f070013

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    const v3, 0x7f070019

    new-instance v4, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker$2;-><init>(Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/language/LayoutPicker;->commitSelectedLayout()V

    .line 90
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase;->onDismiss(Landroid/content/DialogInterface;)V

    .line 91
    return-void
.end method
