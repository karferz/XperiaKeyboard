.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;
.super Ljava/lang/Object;
.source "SoftFullKeyboardKeyRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProviderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$Factory;
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

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mLanguageSettings:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private fireNewPredictiveKeys()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    if-eqz v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 224
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;->onNewPredictiveKeys()V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;
    :cond_0
    return-void
.end method

.method private static isPredictionCandidate(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    .line 45
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 46
    .local v0, "type":I
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

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
    .line 130
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    if-ne p2, v0, :cond_0

    .line 131
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mPredictiveKeyProviderListeners:[Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;

    .line 134
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
    .line 139
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_1

    .line 140
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    if-ne p2, v0, :cond_2

    .line 142
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    goto :goto_0

    .line 143
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_0

    .line 144
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mLanguageSettings:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;
    .locals 6
    .param p1, "languages"    # [Ljava/lang/String;
    .param p2, "keyCase"    # I

    .prologue
    .line 53
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "mapProperties":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "shifted":Z
    if-eqz v3, :cond_0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59
    packed-switch p2, :pswitch_data_0

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v0, v3

    .line 78
    .local v0, "finalMapProperties":[Ljava/lang/String;
    move v1, v4

    .line 80
    .local v1, "finalShifted":Z
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;Z[Ljava/lang/String;)V

    return-object v5

    .line 62
    .end local v0    # "finalMapProperties":[Ljava/lang/String;
    .end local v1    # "finalShifted":Z
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v5, "unshifted"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    const/4 v4, 0x1

    .line 64
    goto :goto_0

    .line 66
    :pswitch_1
    const-string v5, "shifted"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
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
    .line 150
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPredictiveKeys()[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 22

    .prologue
    .line 156
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 157
    .local v13, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    invoke-interface {v2, v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;->getKeyPadding(Landroid/graphics/Rect;)V

    .line 159
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v12, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;->getAllKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 161
    .local v11, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v20, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v19, "shiftedStringBuider":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v14

    .line 164
    .local v14, "primary":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    .line 165
    .local v15, "primaryShifted":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v14, v2}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v2

    .line 165
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->isPredictionCandidate(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v16

    .line 171
    .local v16, "secondary":[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v18

    .line 172
    .local v18, "secondaryShifted":[Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v10, v16, v2

    .line 173
    .local v10, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v10}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 174
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v10    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v10, v18, v2

    .line 178
    .restart local v10    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v10}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 179
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 184
    .end local v10    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v16    # "secondary":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v18    # "secondaryShifted":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mLanguageSettings:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 187
    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->hasForcedSecondaryPrints(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v17

    .line 189
    .local v17, "secondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    move-object/from16 v0, v17

    array-length v2, v0

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 190
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 193
    const/4 v2, 0x2

    new-array v6, v2, [I

    .line 194
    .local v6, "primaryCandidates":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v17, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    aput v3, v6, v2

    .line 198
    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    aput v3, v6, v2

    .line 203
    .end local v17    # "secondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_4
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getModelXPx()I

    move-result v2

    .line 204
    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getModelYPx()I

    move-result v3

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getModelXPx()I

    move-result v4

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getModelWidthPx()I

    move-result v5

    add-int/2addr v4, v5

    .line 205
    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getModelYPx()I

    move-result v5

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getModelHeightPx()I

    move-result v7

    add-int/2addr v5, v7

    .line 206
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/ned/model/CodePointString;->toIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 207
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toIntArray(Ljava/lang/String;)[I

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;-><init>(IIII[I[I[II)V

    .line 209
    .local v1, "predictiveKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    .end local v1    # "predictiveKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .end local v6    # "primaryCandidates":[I
    .restart local v17    # "secondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_5
    const/4 v2, 0x1

    new-array v6, v2, [I

    .restart local v6    # "primaryCandidates":[I
    goto :goto_3

    .line 200
    .end local v6    # "primaryCandidates":[I
    .end local v17    # "secondaryCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_6
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 201
    .restart local v6    # "primaryCandidates":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    aput v3, v6, v2

    goto :goto_4

    .line 213
    .end local v6    # "primaryCandidates":[I
    .end local v11    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v14    # "primary":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v15    # "primaryShifted":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v19    # "shiftedStringBuider":Ljava/lang/StringBuilder;
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    return-object v2
.end method

.method public getProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onNewKeys()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository;->fireNewPredictiveKeys()V

    .line 219
    return-void
.end method
