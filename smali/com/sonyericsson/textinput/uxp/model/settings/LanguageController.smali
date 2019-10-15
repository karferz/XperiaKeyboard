.class public Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
.super Ljava/lang/Object;
.source "LanguageController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/collaboration/OnDebugListener;
.implements Lcom/sonyericsson/ned/model/ILanguageController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;,
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;
    }
.end annotation


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveLanguageIndex:I

.field private final mActiveLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCurrentInputMethod:Ljava/lang/String;

.field private final mIsPhonepad:Z

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mPrimaryLanguageChangedListeners:[Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

.field private final mSmartLanguageDetection:Z

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "currentInputMethod"    # Ljava/lang/String;
    .param p2, "smartLanguageToggle"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v2, v1, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "primary-language-changed"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mCurrentInputMethod:Ljava/lang/String;

    .line 59
    const-string v2, "multitap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "singletap"

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mIsPhonepad:Z

    .line 61
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mSmartLanguageDetection:Z

    .line 62
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private addLanguage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "layout"    # Ljava/lang/String;
    .param p3, "changeToActive"    # Z
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    .line 189
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->removeLanguage(Ljava/lang/String;)V

    .line 191
    if-eqz p3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;

    invoke-direct {v1, p1, p2, p4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Language;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    return-void
.end method

.method private findValidLayout(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v2, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "layouts":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 135
    .local v0, "layout":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->isValidLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    .end local v0    # "layout":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 134
    .restart local v0    # "layout":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "layout":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fireOnLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layout"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mPrimaryLanguageChangedListeners:[Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    if-eqz v1, :cond_0

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mPrimaryLanguageChangedListeners:[Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 327
    .local v0, "listener":Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;->onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
    :cond_0
    return-void
.end method

.method private getCurrentInputMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mCurrentInputMethod:Ljava/lang/String;

    return-object v0
.end method

.method private getLanguage()Lcom/sonyericsson/ned/model/ILanguage;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/ILanguage;

    return-object v0
.end method

.method private getLanguageIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/ILanguage;

    .line 206
    .local v1, "l":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/sonyericsson/ned/model/ILanguage;
    :goto_1
    return v0

    .line 204
    .restart local v0    # "i":I
    .restart local v1    # "l":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "l":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getLocale(Lcom/sonyericsson/ned/model/ILanguage;)Ljava/util/Locale;
    .locals 3
    .param p1, "language"    # Lcom/sonyericsson/ned/model/ILanguage;

    .prologue
    .line 214
    invoke-interface {p1}, Lcom/sonyericsson/ned/model/ILanguage;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {p1}, Lcom/sonyericsson/ned/model/ILanguage;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 220
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->localeFromIso3Language(Ljava/lang/String;)Ljava/util/Locale;
    :try_end_0
    .catch Lcom/sonyericsson/textinput/uxp/util/LanguageUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "returnValue":Ljava/util/Locale;
    goto :goto_0

    .line 221
    .end local v1    # "returnValue":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lcom/sonyericsson/textinput/uxp/util/LanguageUtilsException;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .restart local v1    # "returnValue":Ljava/util/Locale;
    goto :goto_0
.end method

.method private getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 230
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->localeFromIso3Language(Ljava/lang/String;)Ljava/util/Locale;
    :try_end_0
    .catch Lcom/sonyericsson/textinput/uxp/util/LanguageUtilsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    .local v1, "returnValue":Ljava/util/Locale;
    :goto_0
    return-object v1

    .line 231
    .end local v1    # "returnValue":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lcom/sonyericsson/textinput/uxp/util/LanguageUtilsException;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .restart local v1    # "returnValue":Ljava/util/Locale;
    goto :goto_0
.end method

.method private isValidFullKeyboardLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mIsPhonepad:Z

    if-nez v0, :cond_0

    const-string v0, "virtual-12key"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 124
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLayoutId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidKeyboardLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "layout"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->isValidPhonepadLayout(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->isValidFullKeyboardLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLanguageIso3(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->isValidKeyboardLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidPhonepadLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "layout"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mIsPhonepad:Z

    if-eqz v0, :cond_0

    const-string v0, "virtual-12key"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readLanguages()V
    .locals 10

    .prologue
    .line 151
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 153
    .local v3, "languageLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v4, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 157
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "primaryLanguage":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getContextLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 160
    .local v1, "contextLocale":Ljava/util/Locale;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 161
    const/4 v8, 0x0

    iput v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    .line 164
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "activeLanguageIso3":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 166
    .local v2, "isPrimaryLanguage":Z
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 167
    .local v5, "layout":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mIsPhonepad:Z

    if-eqz v9, :cond_0

    invoke-direct {p0, v0, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->isValidLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 169
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->findValidLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v1

    .line 173
    .local v6, "locale":Ljava/util/Locale;
    :goto_1
    invoke-direct {p0, v0, v5, v2, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->addLanguage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)V

    goto :goto_0

    .line 172
    .end local v6    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    goto :goto_1

    .line 176
    .end local v0    # "activeLanguageIso3":Ljava/lang/String;
    .end local v1    # "contextLocale":Ljava/util/Locale;
    .end local v2    # "isPrimaryLanguage":Z
    .end local v4    # "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "layout":Ljava/lang/String;
    .end local v7    # "primaryLanguage":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/ILanguage;

    .line 180
    .local v0, "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    .end local v0    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_1
    return-void
.end method

.method private setupLanguages()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->readLanguages()V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->resetToDefaultLanguages(Z)Ljava/util/LinkedHashMap;

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->readLanguages()V

    .line 148
    :cond_0
    return-void
.end method

.method private switchBetweenUniqueLanguageLayouts()Z
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mSmartLanguageDetection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getUniqueNumberOfActiveLatinLayouts()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 321
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    if-ne p2, v0, :cond_0

    .line 67
    new-array v0, p1, [Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mPrimaryLanguageChangedListeners:[Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mPrimaryLanguageChangedListeners:[Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 76
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mContext:Landroid/content/Context;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_2

    .line 78
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    goto :goto_0

    .line 79
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-ne p2, v0, :cond_0

    .line 80
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public getActiveLanguageIso3s()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v0, "activeLanguageIso3s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/ILanguage;

    .line 360
    .local v1, "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v1    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_0
    return-object v0
.end method

.method public getActiveLanguages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPrimaryLanguageIso3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getLanguage()Lcom/sonyericsson/ned/model/ILanguage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryLanguageLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getLanguage()Lcom/sonyericsson/ned/model/ILanguage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getLocale(Lcom/sonyericsson/ned/model/ILanguage;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getLanguage()Lcom/sonyericsson/ned/model/ILanguage;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguage;->getLayoutId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->setupLanguages()V

    .line 96
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 10
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v6, 0x1

    .line 239
    const-string v7, "primary-language-changed"

    invoke-virtual {p1, v7}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 240
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 241
    .local v5, "size":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->switchBetweenUniqueLanguageLayouts()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_4

    .line 243
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    rem-int/2addr v7, v5

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    .line 245
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/ned/model/ILanguage;

    .line 246
    .local v2, "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "primaryLanguageIso3":Ljava/lang/String;
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getLayoutId()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "primaryLayout":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->isValidLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 250
    invoke-interface {v7, v3}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    invoke-static {v3, v7}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mSmartLanguageDetection:Z

    if-nez v7, :cond_1

    .line 252
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v7, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->fireOnLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v0    # "i":I
    .end local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v3    # "primaryLanguageIso3":Ljava/lang/String;
    .end local v4    # "primaryLayout":Ljava/lang/String;
    .end local v5    # "size":I
    :goto_1
    return v6

    .line 256
    .restart local v0    # "i":I
    .restart local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    .restart local v3    # "primaryLanguageIso3":Ljava/lang/String;
    .restart local v4    # "primaryLayout":Ljava/lang/String;
    .restart local v5    # "size":I
    :cond_1
    sget-object v7, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid layout for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    .end local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v3    # "primaryLanguageIso3":Ljava/lang/String;
    .end local v4    # "primaryLayout":Ljava/lang/String;
    :cond_2
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    rem-int/2addr v7, v5

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    .line 263
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/ned/model/ILanguage;

    .line 264
    .restart local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v3

    .line 267
    .restart local v3    # "primaryLanguageIso3":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 268
    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 269
    .local v1, "identicalLayoutsLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 270
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 271
    iget v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    rem-int/2addr v7, v5

    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    .line 275
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    iget v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    check-cast v2, Lcom/sonyericsson/ned/model/ILanguage;

    .line 276
    .restart local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v3

    .line 278
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v7, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 279
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getLayoutId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->fireOnLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    .end local v1    # "identicalLayoutsLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v3    # "primaryLanguageIso3":Ljava/lang/String;
    .end local v5    # "size":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 334
    return-void
.end method

.method public onReportDebugInformation(Lcom/sonyericsson/collaboration/OnDebugListener$Logger;)V
    .locals 3
    .param p1, "logger"    # Lcom/sonyericsson/collaboration/OnDebugListener$Logger;

    .prologue
    .line 377
    const-string v0, "TextInput::Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputMethod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public reInitialize(Ljava/lang/String;)V
    .locals 7
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 296
    const/4 v5, 0x0

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    .line 297
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->init()V

    .line 299
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getLanguageIndex(Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, "primaryLanguageIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v5, "Invalid primary language:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v5, " Active Languages: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 307
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/ned/model/ILanguage;

    .line 308
    .local v2, "l":Lcom/sonyericsson/ned/model/ILanguage;
    if-lez v1, :cond_0

    .line 309
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v2    # "l":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 315
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->mActiveLanguageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/ned/model/ILanguage;

    .line 316
    .local v3, "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ILanguage;->getLayoutId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->fireOnLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method
