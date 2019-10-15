.class public Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
.super Ljava/lang/Object;
.source "LanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;
    }
.end annotation


# static fields
.field private static final MAX_ACTIVE_LANGUAGE_COUNT:I = 0x3

.field private static final NOT_INITIALIZED:I = -0x1


# instance fields
.field private final mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

.field mActiveLanguageLayouts:Ljava/util/LinkedHashMap;
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

.field private final mContext:Landroid/content/Context;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private final mLock:Ljava/lang/Object;

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private final mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "languageLayoutProvider"    # Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "swiftKeyLanguagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 52
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method private isAnyActiveLatinLanguagesPredictable()Z
    .locals 5

    .prologue
    .line 227
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 230
    .local v1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "language":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isLanguagePackAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    const/4 v2, 0x1

    monitor-exit v3

    .line 236
    .end local v0    # "language":Ljava/lang/String;
    :goto_0
    return v2

    .line 235
    :cond_1
    monitor-exit v3

    .line 236
    const/4 v2, 0x0

    goto :goto_0

    .line 235
    .end local v1    # "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isInterestingLanguage(Ljava/lang/String;Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 462
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 463
    .local v0, "isActivated":Z
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLanguageDictionaryAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iso3Language"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isLanguagePackAvailable(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLanguagePackAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "iso3Language"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 253
    invoke-virtual {v2, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v0

    .line 254
    .local v0, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v2, v3, v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isDictionaryNeedingNetworkDownload(Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private removeInvalidLanguageLayouts(Ljava/util/LinkedHashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "languageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 90
    .local v1, "invalidLanguages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "languageIso3":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, "layoutId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v5, v2}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLanguageIso3(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 94
    invoke-interface {v5, v3}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLayoutId(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "languageIso3":Ljava/lang/String;
    .end local v3    # "layoutId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 99
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .restart local v2    # "languageIso3":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    .end local v2    # "languageIso3":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->reset()V

    .line 104
    :cond_4
    return-void
.end method

.method private setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V
    .locals 9
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    const/4 v8, 0x3

    if-le v6, v8, :cond_0

    .line 173
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "too many active languages"

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 176
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->removeInvalidLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 179
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getUsedLatinLanguageLayouts()Ljava/util/Set;

    move-result-object v4

    .line 180
    .local v4, "usedLatinLanguageLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 181
    .local v5, "usedLatinLanguageLayoutsChanged":Z
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "language":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, "layoutId":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 186
    invoke-interface {v8, v2}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    invoke-static {v2, v8}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    const/4 v5, 0x1

    .line 188
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "layoutId":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 193
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 194
    if-eqz v5, :cond_3

    .line 195
    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setUsedLatinLanguageLayouts(Ljava/util/Set;)V

    .line 197
    :cond_3
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 200
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->reset()V

    .line 201
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    return-void
.end method

.method private shouldInheritLatinLayout(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "primaryLanguage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 386
    invoke-interface {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {p1, v1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 387
    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateLanguage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 356
    invoke-interface {v2, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getCustomCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "countryIso2":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->shouldInheritLatinLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "layoutId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->addActiveLanguageLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    return v2

    .line 365
    .end local v1    # "layoutId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    const-string v4, "full"

    invoke-interface {v2, p1, v0, v4}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getDefaultLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "layoutId":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v0    # "countryIso2":Ljava/lang/String;
    .end local v1    # "layoutId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addActiveLanguageLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 324
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLanguageIso3(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 325
    invoke-interface {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLayoutId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 330
    :goto_0
    return v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 330
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeActiveLanguageLayoutId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mLanguageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 290
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 294
    :cond_0
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearActiveLanguageLayouts()V
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deactivateLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 377
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->removeActiveLanguageLayout(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fillInterestSortedLanguageIso3s(Ljava/util/ArrayList;)I
    .locals 8
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "interestSortedLanguageIso3s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 440
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageIso3s()[Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "allLanguagesIso3":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 443
    .local v1, "interestingLanguagesCount":I
    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v0, v4

    .line 444
    .local v2, "languageIso3":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 445
    invoke-virtual {v7, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v3

    .line 446
    .local v3, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isInterestingLanguage(Ljava/lang/String;Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 448
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    .line 443
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    .end local v0    # "allLanguagesIso3":[Ljava/lang/String;
    .end local v1    # "interestingLanguagesCount":I
    .end local v2    # "languageIso3":Ljava/lang/String;
    .end local v3    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 456
    .restart local v0    # "allLanguagesIso3":[Ljava/lang/String;
    .restart local v1    # "interestingLanguagesCount":I
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveLanguageLayoutId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveLanguageLayouts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->resetToDefaultLanguages(Z)Ljava/util/LinkedHashMap;

    .line 162
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLanguageDataDynamic(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;
    .locals 11
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 474
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 476
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    .line 478
    .local v4, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getAvailableUpdates(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Ljava/util/Set;

    move-result-object v8

    .line 479
    .local v8, "updates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isInterestingLanguage(Ljava/lang/String;Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    .local v7, "isUpdateAvailable":Z
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 482
    .local v3, "isLanguageActivated":Z
    const-string v1, ""

    .line 483
    .local v1, "layoutId":Ljava/lang/String;
    const-string v2, ""

    .line 484
    .local v2, "layoutName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "layoutId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 486
    .restart local v1    # "layoutId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    .line 490
    invoke-virtual {v0, v6, v4, p1, v10}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isDictionaryNeedingNetworkDownload(Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;Z)Z

    move-result v5

    .line 492
    .local v5, "needDownload":Z
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 494
    invoke-virtual {v6, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getDownloadPercentage(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageDataDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/touchtype_fluency/util/LanguagePack;ZIZ)V

    monitor-exit v9

    return-object v0

    .line 480
    .end local v1    # "layoutId":Ljava/lang/String;
    .end local v2    # "layoutName":Ljava/lang/String;
    .end local v3    # "isLanguageActivated":Z
    .end local v5    # "needDownload":Z
    .end local v7    # "isUpdateAvailable":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 496
    .end local v4    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v8    # "updates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "primaryLanguage":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 121
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isSupportedLanguageIso3(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isLanguageActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    monitor-exit v3

    move-object v2, v1

    .line 134
    :goto_0
    return-object v2

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    goto :goto_0

    .line 135
    .end local v1    # "primaryLanguage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 128
    .restart local v1    # "primaryLanguage":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getDefaultActiveLanguages(Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 131
    .local v0, "defaultLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 132
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    goto :goto_0

    .line 134
    :cond_2
    const-string v2, "eng"

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSelectableLayouts(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getSelectableLayouts(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUniqueNumberOfActiveLatinLayouts()I
    .locals 2

    .prologue
    .line 529
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->getUniqueNumberOfActiveLatinLayouts()I

    move-result v0

    monitor-exit v1

    return v0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasAnyActiveForcedSecondaryPrintsLanguages()Z
    .locals 5

    .prologue
    .line 414
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 416
    .local v1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    .local v0, "language":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v4, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->hasForcedSecondaryPrints(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    const/4 v2, 0x1

    monitor-exit v3

    .line 421
    .end local v0    # "language":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 422
    .end local v1    # "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->reinitialize()V

    .line 74
    return-void
.end method

.method public isActiveLanguageSuitableForPrediction()Z
    .locals 3

    .prologue
    .line 210
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "primaryLanguage":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmartLanguageDetection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 213
    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isLanguageDictionaryAvailable(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v2

    .line 216
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isAnyActiveLatinLanguagesPredictable()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 218
    .end local v0    # "primaryLanguage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLanguageActive(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reinitialize()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->removeInvalidLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageAnalyser:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings$ActiveLanguageAnalyser;->reset()V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeActiveLanguageLayout(Ljava/lang/String;)Z
    .locals 3
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 304
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 306
    .local v0, "wasRemoved":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 309
    :cond_0
    monitor-exit v2

    return v0

    .line 305
    .end local v0    # "wasRemoved":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetToDefaultLanguages(Z)Ljava/util/LinkedHashMap;
    .locals 3
    .param p1, "doPersist"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->getDefaultActiveLanguages(Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 401
    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->setActiveLanguageLayouts(Ljava/util/LinkedHashMap;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    monitor-exit v1

    return-object v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLanguageLayoutProvider(Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;)V
    .locals 2
    .param p1, "languageLayoutProvider"    # Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->reinitialize()V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPrimaryLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 146
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 148
    monitor-exit v2

    .line 149
    return-void

    .line 148
    .end local v0    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toggleLanguageActivation(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->mActiveLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->deactivateLanguage(Ljava/lang/String;)Z

    .line 342
    const/4 v0, 0x1

    monitor-exit v1

    .line 344
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->activateLanguage(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
