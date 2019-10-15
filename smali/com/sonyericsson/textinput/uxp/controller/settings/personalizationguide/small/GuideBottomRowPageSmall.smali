.class public Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;
.super Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.source "GuideBottomRowPageSmall.java"


# static fields
.field private static final DEBUG:Z

.field private static final GLOWING_KEYS_FOR_VOICE:[I

.field private static final SMILEY_KEY:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

.field private mGlowSmileyKey:Z

.field private mGlowVoiceKey:Z

.field private mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

.field private mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

.field private mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->TAG:Ljava/lang/String;

    .line 35
    new-array v0, v3, [I

    const/16 v1, -0xe

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->SMILEY_KEY:[I

    .line 39
    new-array v0, v3, [I

    const/16 v1, -0x10

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->GLOWING_KEYS_FOR_VOICE:[I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 49
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowSmileyKey:Z

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowVoiceKey:Z

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowVoiceKey:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowSmileyKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;)Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mPageListener:Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;

    return-object v0
.end method


# virtual methods
.method protected addAdditionalOptions()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 80
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;)V

    .line 106
    .local v0, "guideListItemActionListener":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-static {v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/util/VoiceUtils;->isVoiceSupported(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .line 109
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    const v6, 0x7f07008f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    const v7, 0x7f070090

    .line 111
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->VOICE:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 109
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 114
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 115
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 116
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideLanguageVoiceView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    :cond_0
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    const v6, 0x7f070074

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    const v7, 0x7f070105

    .line 122
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SECONDARY_PRINTS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    .line 120
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 124
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 125
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 126
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v2, "listItemView1":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    const v5, 0x7f070106

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->NUMERIC_KEYS:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v2, v3, v4, v9, v5}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 132
    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 133
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, "listItemView":Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    const v5, 0x7f07010a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;->SMILEY:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;

    invoke-virtual {v1, v3, v4, v9, v5}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->initialize(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$SupportedSettings;)V

    .line 139
    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->setOnGuideListItemActionListener(Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView$OnGuideListItemActionListener;)V

    .line 140
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 72
    const v1, 0x7f030019

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mContentView:Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->addAdditionalOptions()V

    .line 76
    return-void
.end method

.method public getGlowingKeys()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowSmileyKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmileyKeyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowSmileyKey:Z

    .line 165
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->SMILEY_KEY:[I

    .line 171
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowVoiceKey:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isVoiceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGlowVoiceKey:Z

    .line 169
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->GLOWING_KEYS_FOR_VOICE:[I

    goto :goto_0

    .line 171
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->getGlowingKeys()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f070089

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 147
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->onDestroyView()V

    .line 148
    return-void
.end method

.method public postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V
    .locals 0
    .param p1, "binder"    # Lcom/sonyericsson/collaboration/ObjectBinder;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->toggleSecondaryPrintsWarning()V

    .line 154
    return-void
.end method

.method protected toggleSecondaryPrintsWarning()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mGuideSecondaryPrintsView:Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideBottomRowPageSmall;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 158
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->hasAnyActiveForcedSecondaryPrintsLanguages()Z

    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/GuideListItemView;->showSecondaryText(Z)V

    .line 159
    return-void
.end method
