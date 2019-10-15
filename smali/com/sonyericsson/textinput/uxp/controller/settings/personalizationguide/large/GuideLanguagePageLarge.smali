.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;
.source "GuideLanguagePageLarge.java"


# static fields
.field private static final DEBUG:Z

.field private static final GLOWING_KEYS_FOR_SMILEY:[I

.field private static final GLOWING_KEYS_FOR_VOICE:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

.field private mGlowSmileyKey:Z

.field private mGlowVoiceKey:Z

.field private mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

.field private mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->TAG:Ljava/lang/String;

    .line 32
    new-array v0, v3, [I

    const/16 v1, -0xe

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->GLOWING_KEYS_FOR_SMILEY:[I

    .line 36
    new-array v0, v3, [I

    const/16 v1, -0x10

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->GLOWING_KEYS_FOR_VOICE:[I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;Z)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .param p5, "fragment"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;
    .param p6, "showUpgradeText"    # Z

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Landroid/app/Fragment;Z)V

    .line 40
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowVoiceKey:Z

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowSmileyKey:Z

    .line 52
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowVoiceKey:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowSmileyKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mPageListener:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    return-object v0
.end method


# virtual methods
.method protected addAdditionalOptions(Landroid/view/LayoutInflater;)V
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    .line 64
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;)V

    .line 91
    .local v0, "guideListItemActionListener":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v5, 0x7f07008f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v6, 0x7f070090

    .line 94
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->VOICE:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 92
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 99
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v5, 0x7f070074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v6, 0x7f070105

    .line 105
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SECONDARY_PRINTS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 103
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 108
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 109
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->NUMERIC_KEYS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v1, v2, v3, v7, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .end local v1    # "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v1    # "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v4, 0x7f07010a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SMILEY:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v1, v2, v3, v7, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 122
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->addAdditionalOptions(Landroid/view/LayoutInflater;)V

    .line 60
    return-void
.end method

.method public getGlowingKeys()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowVoiceKey:Z

    if-eqz v0, :cond_0

    .line 158
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowVoiceKey:Z

    .line 159
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->GLOWING_KEYS_FOR_VOICE:[I

    .line 165
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowSmileyKey:Z

    if-eqz v0, :cond_1

    .line 162
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGlowSmileyKey:Z

    .line 163
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->GLOWING_KEYS_FOR_SMILEY:[I

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->getGlowingKeys()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f07007a

    return v0
.end method

.method protected isInList()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected onLeaveContinue(Z)V
    .locals 0
    .param p1, "saved"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->onSettingsUpdated()V

    .line 141
    return-void
.end method

.method protected onLeaveExit(Z)V
    .locals 0
    .param p1, "saved"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->onSettingsUpdated()V

    .line 148
    :cond_0
    return-void
.end method

.method protected onSettingsUpdated()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onSettingUpdated()V

    .line 136
    return-void
.end method

.method public postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V
    .locals 0
    .param p1, "binder"    # Lcom/sonyericsson/collaboration/ObjectBinder;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->setAdditionalOptionsVisibility()V

    .line 129
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->toggleSecondaryPrintsWarning()V

    .line 131
    return-void
.end method

.method protected setAdditionalOptionsVisibility()V
    .locals 7

    .prologue
    .line 169
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVoiceInputEnable(Landroid/content/Context;)Z

    move-result v0

    .line 172
    .local v0, "isGoogleVoiceInputPresent":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-static {v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/util/VoiceUtils;->isLanguagesSupportingVoiceInput(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 174
    .local v1, "noLanguageSupported":Z
    :goto_0
    const/4 v2, 0x0

    .line 175
    .local v2, "visibility":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 176
    const/4 v2, 0x1

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mContext:Landroid/content/Context;

    const v5, 0x7f070091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setSecondaryText(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 181
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->enableView(Z)V

    .line 183
    .end local v0    # "isGoogleVoiceInputPresent":Z
    .end local v1    # "noLanguageSupported":Z
    .end local v2    # "visibility":Z
    :cond_1
    return-void

    .line 172
    .restart local v0    # "isGoogleVoiceInputPresent":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected toggleSecondaryPrintsWarning()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideLanguagePageLarge;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 187
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->hasAnyActiveForcedSecondaryPrintsLanguages()Z

    move-result v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 188
    return-void
.end method
