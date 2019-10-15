.class public abstract Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;
.super Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;
.source "GuideLanguagePageOrListItem.java"


# static fields
.field private static final ETC:Ljava/lang/String; = "\u2026"

.field private static final GLOWING_KEY_FOR_LANGUAGE_TOGGLE:[I

.field private static final MAX_LANGUAGES_SHOWN:I = 0x4

.field private static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final SEPARATOR_ARA_FAR:Ljava/lang/String; = "\u060c "

.field private static final sLanguagesWithLayouts:[Ljava/lang/String;


# instance fields
.field private mActiveLanguageLayouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentView:Landroid/widget/LinearLayout;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentWritingLanguageView:Landroid/widget/TextView;

.field private mGlowLanguageKey:Z

.field private final mLocale:Ljava/util/Locale;

.field private final mMenuLanguage:Ljava/lang/String;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRtlMenuLangage:Z

.field private final mShowUpgradeText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v3, [I

    const/16 v1, -0x10

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->GLOWING_KEY_FOR_LANGUAGE_TOGGLE:[I

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tur"

    aput-object v1, v0, v2

    const-string v1, "ces"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "slk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hun"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "slv"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hrv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "srp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->sLanguagesWithLayouts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p4, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;
    .param p5, "fragment"    # Landroid/app/Fragment;
    .param p6, "showUpgradeText"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage$PageListener;)V

    .line 56
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 78
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mRtlMenuLangage:Z

    .line 79
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mGlowLanguageKey:Z

    .line 90
    invoke-virtual {p5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getContextLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLocale:Ljava/util/Locale;

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mMenuLanguage:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mActiveLanguageLayouts:Ljava/util/Map;

    .line 96
    iput-boolean p6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mShowUpgradeText:Z

    .line 97
    return-void
.end method

.method private parenthesize(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "languageLayout"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 252
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 101
    const v3, 0x7f030019

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContentView:Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->isInList()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_0
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mShowUpgradeText:Z

    if-eqz v3, :cond_1

    .line 108
    const v3, 0x7f030015

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "languagesView":Landroid/view/View;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    .end local v1    # "languagesView":Landroid/view/View;
    :cond_1
    const v3, 0x7f030014

    .line 114
    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .restart local v1    # "languagesView":Landroid/view/View;
    const v3, 0x7f0f0083

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mCurrentWritingLanguageView:Landroid/widget/TextView;

    .line 116
    const v3, 0x7f0f0084

    .line 117
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "changeLanguagesButton":Landroid/widget/Button;
    if-nez v0, :cond_2

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    return-void

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getGlowingKeys()[I
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mGlowLanguageKey:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mGlowLanguageKey:Z

    .line 277
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->GLOWING_KEY_FOR_LANGUAGE_TOGGLE:[I

    .line 279
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;->getGlowingKeys()[I

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract isInList()Z
.end method

.method protected abstract onLeaveContinue(Z)V
.end method

.method protected abstract onLeaveExit(Z)V
.end method

.method protected abstract onSettingsUpdated()V
.end method

.method public postBind(Lcom/sonyericsson/collaboration/ObjectBinder;)V
    .locals 6
    .param p1, "binder"    # Lcom/sonyericsson/collaboration/ObjectBinder;

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/sonyericsson/collaboration/ObjectBinder;->getObjects()[Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "objects":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 261
    .local v2, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 262
    .local v0, "obj":Ljava/lang/Object;
    instance-of v5, v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 263
    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 266
    :cond_0
    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->readLanguages(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mGlowLanguageKey:Z

    .line 271
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    return-void

    .line 261
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public readLanguages(Ljava/lang/String;)Z
    .locals 13
    .param p1, "primaryLanguage"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 155
    invoke-virtual {v10}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 156
    .local v0, "activeLanguageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v7, "languageScripts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "ara"

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mMenuLanguage:Ljava/lang/String;

    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "fas"

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mMenuLanguage:Ljava/lang/String;

    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    const-string v8, "\u060c "

    .line 162
    .local v8, "languageSeparator":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mMenuLanguage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getDirection(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mRtlMenuLangage:Z

    .line 165
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v1, "currentLanguagesBuffer":Ljava/lang/StringBuffer;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_6

    const v2, 0x7f07007b

    .line 173
    .local v2, "currentLanguagesLabel":I
    :goto_2
    iget-boolean v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mRtlMenuLangage:Z

    if-eqz v10, :cond_1

    .line 177
    const-string v10, "\u200f"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mActiveLanguageLayouts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    .line 183
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    if-eq v10, v11, :cond_7

    const/4 v4, 0x1

    .line 185
    .local v4, "hasNewLanguages":Z
    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 191
    sget-object v10, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mContext:Landroid/content/Context;

    const v11, 0x7f07007c

    .line 194
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 193
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_2
    :goto_4
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mCurrentWritingLanguageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    if-eqz v4, :cond_3

    .line 244
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mActiveLanguageLayouts:Ljava/util/Map;

    .line 247
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_f

    if-eqz v4, :cond_f

    const/4 v10, 0x1

    :goto_5
    return v10

    .line 160
    .end local v1    # "currentLanguagesBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "currentLanguagesLabel":I
    .end local v4    # "hasNewLanguages":Z
    .end local v8    # "languageSeparator":Ljava/lang/String;
    :cond_4
    const-string v8, ", "

    goto :goto_0

    .line 162
    .restart local v8    # "languageSeparator":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 169
    .restart local v1    # "currentLanguagesBuffer":Ljava/lang/StringBuffer;
    :cond_6
    const v2, 0x7f07007d

    goto :goto_2

    .line 183
    .restart local v2    # "currentLanguagesLabel":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 198
    .restart local v4    # "hasNewLanguages":Z
    :cond_8
    sget-object v10, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v10, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    sget-object v10, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->sLanguagesWithLayouts:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 203
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 205
    .local v9, "layout":Ljava/lang/String;
    if-nez v9, :cond_9

    .line 206
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLocale:Ljava/util/Locale;

    .line 207
    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    const-string v12, "full"

    .line 206
    invoke-virtual {v10, p1, v11, v12}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getDefaultLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    :cond_9
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 211
    invoke-virtual {v10, v9}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    invoke-direct {p0, v1, v10}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->parenthesize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 214
    .end local v9    # "layout":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x1

    .line 216
    .local v6, "languageCounter":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 217
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    .local v5, "key":Ljava/lang/String;
    if-nez v4, :cond_c

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mActiveLanguageLayouts:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 220
    const/4 v4, 0x1

    .line 223
    :cond_c
    const-string v11, "vie"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 224
    invoke-virtual {v7, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_7
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x4

    if-ge v6, v11, :cond_b

    .line 230
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v11, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 226
    :cond_d
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLanguagePageOrListItem;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v11, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 236
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_e
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_2

    .line 237
    const-string v10, "\u2026"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 247
    .end local v6    # "languageCounter":I
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_5
.end method
