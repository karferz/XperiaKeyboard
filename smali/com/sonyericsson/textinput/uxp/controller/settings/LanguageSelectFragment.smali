.class public Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;
.super Landroid/app/Fragment;
.source "LanguageSelectFragment.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
.implements Lcom/sonyericsson/textinput/uxp/view/language/LanguageDialogBase$DialogConfirmationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;
    }
.end annotation


# static fields
.field private static final SHOW_REASON_AUTO_PICK:Ljava/lang/String; = "AUTO_PICK"

.field private static final SHOW_REASON_USER_PICK:Ljava/lang/String; = "USER_PICK"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

.field private mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mShowOKButton:Z

.field private mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mAdapter:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    return-object v0
.end method

.method private handleActivationToggle(Ljava/lang/String;)V
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->toggleLanguageActivation(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 175
    const-string v1, "TI_DialogTooManyLanguages"

    const-string v2, "USER_PICK"

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isLanguageActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->isDictionaryNeedingNetworkDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const-string v1, "TI_DialogDownloadConfirmation"

    const-string v2, "AUTO_PICK"

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V

    .line 188
    return-void

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->languageHasSuperSetLayout(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v1, "TI_LayoutPicker"

    const-string v2, "AUTO_PICK"

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDictionaryNeedingNetworkDownload(Ljava/lang/String;)Z
    .locals 4
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 192
    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    .line 194
    .local v0, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isDictionaryNeedingNetworkDownload(Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dialogTag"    # Ljava/lang/String;
    .param p2, "languageIso3"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getShowLanguageDialogListener()Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;

    move-result-object v0

    .line 139
    .local v0, "showLanguageDialogListener":Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method getShowLanguageDialogListener()Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;

    return-object v0
.end method

.method public notifyItemChangedThreadSafe(Ljava/lang/String;)V
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$ShowLanguageDialogListener;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ShowLanguageDialogListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->addDownloadListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->setHasOptionsMenu(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->setMenuVisibility(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 75
    .local v0, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 76
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 77
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 79
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$OnItemClickListener;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mAdapter:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 87
    const v6, 0x7f030030

    invoke-virtual {p1, v6, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "fragmentView":Landroid/view/View;
    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    .line 92
    .local v3, "itemAnimator":Landroid/support/v7/widget/SimpleItemAnimator;
    invoke-virtual {v3, v10}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 94
    const v6, 0x7f0f00c7

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    .line 96
    .local v5, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v6, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    sget-object v9, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    .line 97
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ordinal()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sonyericsson/textinput/uxp/view/language/DividerItemDecoration;-><init>(Landroid/content/Context;II)V

    .line 96
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 98
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mAdapter:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 100
    invoke-virtual {v5, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 102
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mShowOKButton:Z

    if-eqz v6, :cond_0

    .line 103
    const v6, 0x7f0f00c8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "buttonsContainer":Landroid/view/View;
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const v6, 0x7f0f00c9

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    .local v0, "button":Landroid/widget/Button;
    new-instance v6, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "buttonsContainer":Landroid/view/View;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->removeDownloadListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;)V

    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 126
    return-void
.end method

.method public onDialogConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "dialogTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "showReason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isConfirmed"    # Z

    .prologue
    .line 234
    if-eqz p4, :cond_0

    .line 235
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V

    .line 238
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TI_DialogDownloadConfirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->activateLanguage(Ljava/lang/String;)Z

    .line 242
    :cond_1
    const-string v0, "TI_DialogDownloadConfirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AUTO_PICK"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 243
    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->languageHasSuperSetLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "TI_LayoutPicker"

    const-string v1, "AUTO_PICK"

    invoke-direct {p0, v0, p2, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    return-void
.end method

.method public onDownloadCancelled(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onDownloadFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onItemClick(Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;ILcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;)Z
    .locals 4
    .param p1, "clickAction"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;
    .param p2, "listPosition"    # I
    .param p3, "languageDataStatic"    # Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;

    .prologue
    .line 147
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataStatic;->getLanguageIso3()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "languageIso3":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment$3;->$SwitchMap$com$sonyericsson$textinput$uxp$view$language$LanguageAdapter$ClickAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown clickAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->handleActivationToggle(Ljava/lang/String;)V

    .line 168
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 153
    :pswitch_1
    const-string v1, "TI_DialogDownloadConfirmation"

    const-string v2, "USER_PICK"

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v1, "TI_DialogUpdateConfirmation"

    const-string v2, "USER_PICK"

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v1, "TI_DialogCancelDownloadConfirmation"

    const-string v2, "USER_PICK"

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_4
    const-string v1, "TI_LayoutPicker"

    const-string v2, "USER_PICK"

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "current"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->notifyItemChangedThreadSafe(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public showOKButton(Z)V
    .locals 0
    .param p1, "showExtraButtons"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectFragment;->mShowOKButton:Z

    .line 130
    return-void
.end method
