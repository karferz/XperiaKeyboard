.class public Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;
.super Landroid/app/Fragment;
.source "SkinSelectorFragment.java"


# static fields
.field private static final CHANGE_ANIMATION_DURATION:I = 0x1c2

.field private static final DEFAULT_NUMBER_OF_COLUMNS:I = 0x1

.field private static final IMAGE_SAMPLE_SIZE:I = 0x2

.field private static final TABLET_LANDSCAPE_NUMBER_OF_COLUMNS:I = 0x2


# instance fields
.field private mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

.field private mBottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

.field private mContext:Landroid/content/Context;

.field private mForceSecondaryPrints:Z

.field private mLangLayoutXmlId:I

.field private mLanguage:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mTemplateLayoutXmlId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getAllSkinItems()Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;>;"
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils;->getActiveSkins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "activeSkins":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;>;"
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, "bitmapCreator":Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;

    .line 127
    .local v0, "activeSkin":Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->getSkinName()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "skinName":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 129
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->getStringResource()I

    move-result v11

    .line 128
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "skinDisplayName":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSkin(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-result-object v5

    .line 131
    .local v5, "skin":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    invoke-direct {p0, v3, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->getQwertyKeyboardBitmap(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;

    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 133
    invoke-interface {v10}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;->getSkinName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v7, v8, v6, v2, v10}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 134
    .local v7, "skinItem":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "activeSkin":Lcom/sonyericsson/textinput/uxp/util/SkinUtils$Skin;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "skin":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .end local v6    # "skinDisplayName":Ljava/lang/String;
    .end local v7    # "skinItem":Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
    .end local v8    # "skinName":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private getQwertyKeyboardBitmap(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmapCreator"    # Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mLanguage:Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mLangLayoutXmlId:I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mTemplateLayoutXmlId:I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mForceSecondaryPrints:Z

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mBottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    const/4 v8, 0x2

    move-object v0, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->getKeyboardBitmap(Ljava/lang/String;IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZLcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initKeyboardLayouts(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V
    .locals 8
    .param p1, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    const-string v7, "full"

    .line 102
    invoke-static {v5, v6, p2, p1, v7}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageController(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    move-result-object v0

    .line 105
    .local v0, "languageController":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "primaryLanguageIso3":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getPrimaryLayoutId()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "primaryLayoutId":Ljava/lang/String;
    const-string v5, "full"

    invoke-virtual {p1, v2, v3, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getKeyboardLayoutXmlId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "layoutXmlId":I
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getTemplateLayoutXmlId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 113
    .local v4, "templateLayoutId":I
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mLanguage:Ljava/lang/String;

    .line 114
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mLangLayoutXmlId:I

    .line 115
    iput v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mTemplateLayoutXmlId:I

    .line 116
    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->hasForcedSecondaryPrints(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mForceSecondaryPrints:Z

    .line 118
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageController(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 73
    .local v6, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmileyKeyEnabled()Z

    move-result v2

    .line 76
    .local v2, "showSmileyKey":Z
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPeriodAndCommaKeysEnabled()Z

    move-result v3

    .line 77
    .local v3, "showPunctuation":Z
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasHandwritingInput(Landroid/content/Context;)Z

    move-result v5

    .line 78
    .local v5, "showHandwritingKey":Z
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;-><init>(ZZZZZ)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mBottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    .line 80
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v0

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->initKeyboardLayouts(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V

    .line 82
    const/4 v8, 0x1

    .line 83
    .local v8, "nbrColumns":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v8, 0x2

    .line 86
    :cond_0
    new-instance v7, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 88
    .local v7, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f090118

    .line 90
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SpaceItemDecoration;-><init>(I)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 92
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->getAllSkinItems()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v10, 0x1c2

    invoke-virtual {v0, v10, v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "content":Landroid/view/View;
    const v1, 0x7f0f007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorFragment;->mAdapter:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;->recycleItems()V

    .line 149
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 150
    return-void
.end method
