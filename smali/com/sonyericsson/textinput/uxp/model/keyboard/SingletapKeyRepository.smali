.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;
.super Ljava/lang/Object;
.source "SingletapKeyRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

.field private mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private fireNewPredictiveKeys()V
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 166
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;->onNewPredictiveKeys()V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;
    :cond_0
    return-void
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
    .line 115
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    if-ne p2, v0, :cond_0

    .line 116
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    .line 119
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
    .line 124
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-ne p2, v0, :cond_1

    .line 125
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    if-ne p2, v0, :cond_0

    .line 127
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;
    .locals 6
    .param p1, "languages"    # [Ljava/lang/String;
    .param p2, "keyCase"    # I

    .prologue
    .line 42
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "mapProperties":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, "shifted":Z
    if-eqz v3, :cond_0

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 48
    packed-switch p2, :pswitch_data_0

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 62
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 66
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v0, v3

    .line 67
    .local v0, "finalMapProperties":[Ljava/lang/String;
    move v1, v4

    .line 69
    .local v1, "finalShifted":Z
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;Z[Ljava/lang/String;)V

    return-object v5

    .line 51
    .end local v0    # "finalMapProperties":[Ljava/lang/String;
    .end local v1    # "finalShifted":Z
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v5, "unshifted"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_0

    .line 55
    :pswitch_1
    const-string v5, "shifted"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    .line 133
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPredictiveKeys()[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 12

    .prologue
    .line 141
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 142
    .local v5, "padding":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    invoke-interface {v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;->getKeyPadding(Landroid/graphics/Rect;)V

    .line 144
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v10, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;->getAllKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 147
    .local v9, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasKeyIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v1

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v2

    .line 149
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v3

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v4

    .line 150
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyIndexCharacter()I

    move-result v6

    const/4 v7, 0x0

    .line 151
    invoke-virtual {v9, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;-><init>(IIIILandroid/graphics/Rect;I[Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 148
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v9    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onNewKeys()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository;->fireNewPredictiveKeys()V

    .line 161
    return-void
.end method
