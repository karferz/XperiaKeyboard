.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;
.super Ljava/lang/Object;
.source "MultitapKeyRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$Factory;
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
.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
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
    .line 135
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 140
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-ne p2, v0, :cond_0

    .line 141
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .line 143
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;
    .locals 6
    .param p1, "languages"    # [Ljava/lang/String;
    .param p2, "keyCase"    # I

    .prologue
    .line 36
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "mapProperties":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 38
    .local v4, "shifted":Z
    if-eqz v3, :cond_0

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 42
    packed-switch p2, :pswitch_data_0

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 55
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 59
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v0, v3

    .line 60
    .local v0, "finalMapProperties":[Ljava/lang/String;
    move v1, v4

    .line 62
    .local v1, "finalShifted":Z
    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;Z[Ljava/lang/String;)V

    return-object v5

    .line 45
    .end local v0    # "finalMapProperties":[Ljava/lang/String;
    .end local v1    # "finalShifted":Z
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v5, "unshifted"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_0

    .line 49
    :pswitch_1
    const-string v5, "shifted"

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
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
    .line 147
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPredictiveKeys()[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
