.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;
.super Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;
.source "GuideLanguagePageMedium.java"


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

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->TAG:Ljava/lang/String;

    .line 32
    new-array v0, v3, [I

    const/16 v1, -0xe

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->GLOWING_KEYS_FOR_SMILEY:[I

    .line 36
    new-array v0, v3, [I

    const/16 v1, -0x10

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->GLOWING_KEYS_FOR_VOICE:[I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;)V
    .locals 7
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .param p5, "fragment"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .prologue
    const/4 v6, 0x0

    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Landroid/app/Fragment;Z)V

    .line 40
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowVoiceKey:Z

    .line 41
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowSmileyKey:Z

    .line 50
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowVoiceKey:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowSmileyKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mPageListener:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    return-object v0
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 58
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;)V

    .line 85
    .local v0, "guideListItemActionListener":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v5, 0x7f07008f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v6, 0x7f070090

    .line 88
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->VOICE:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 86
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 91
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 93
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v5, 0x7f070074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v6, 0x7f070105

    .line 99
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SECONDARY_PRINTS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 97
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->NUMERIC_KEYS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v1, v2, v3, v7, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .end local v1    # "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v1    # "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v4, 0x7f07010a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SMILEY:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v1, v2, v3, v7, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public getGlowingKeys()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowVoiceKey:Z

    if-eqz v0, :cond_0

    .line 174
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowVoiceKey:Z

    .line 175
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->GLOWING_KEYS_FOR_VOICE:[I

    .line 181
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowSmileyKey:Z

    if-eqz v0, :cond_1

    .line 178
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGlowSmileyKey:Z

    .line 179
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->GLOWING_KEYS_FOR_SMILEY:[I

    goto :goto_0

    .line 181
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->getGlowingKeys()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f07007a

    return v0
.end method

.method protected isInList()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method protected onLeaveContinue(Z)V
    .locals 0
    .param p1, "saved"    # Z

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->onSettingsUpdated()V

    .line 157
    return-void
.end method

.method protected onLeaveExit(Z)V
    .locals 0
    .param p1, "saved"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->onSettingsUpdated()V

    .line 164
    :cond_0
    return-void
.end method

.method protected onSettingsUpdated()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mFragment:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideFragment;->onSettingUpdated()V

    .line 152
    return-void
.end method

.method public postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V
    .locals 0
    .param p1, "binder"    # Lcom/sonyericsson/collaboration/ObjectBinder;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->setAdditionalOptionsVisibility()V

    .line 123
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->toggleSecondaryPrintsWarning()V

    .line 125
    return-void
.end method

.method protected setAdditionalOptionsVisibility()V
    .locals 7

    .prologue
    .line 128
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVoiceInputEnable(Landroid/content/Context;)Z

    move-result v0

    .line 131
    .local v0, "isGoogleVoiceInputPresent":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-static {v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/util/VoiceUtils;->isLanguagesSupportingVoiceInput(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 133
    .local v1, "noLanguageSupported":Z
    :goto_0
    const/4 v2, 0x0

    .line 134
    .local v2, "visibility":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 135
    const/4 v2, 0x1

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mContext:Landroid/content/Context;

    const v5, 0x7f070091

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setSecondaryText(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 140
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->enableView(Z)V

    .line 142
    .end local v0    # "isGoogleVoiceInputPresent":Z
    .end local v1    # "noLanguageSupported":Z
    .end local v2    # "visibility":Z
    :cond_1
    return-void

    .line 131
    .restart local v0    # "isGoogleVoiceInputPresent":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected toggleSecondaryPrintsWarning()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideLanguagePageMedium;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 146
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->hasAnyActiveForcedSecondaryPrintsLanguages()Z

    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 147
    return-void
.end method
