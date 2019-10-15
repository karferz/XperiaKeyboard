.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;
.super Ljava/lang/Object;
.source "KeyboardDimTouchBroadcaster.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$Factory;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;
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
.field private final mDimmedKeyboardTouchedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->mDimmedKeyboardTouchedListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public addDimmedKeyboardTouchedListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->mDimmedKeyboardTouchedListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

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
    .line 36
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
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
    .line 32
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public fireOnDimmedKeyboardTouched()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->mDimmedKeyboardTouchedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;

    .line 61
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;->onDimmedKeyboardTouched()V

    goto :goto_0

    .line 63
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;
    :cond_0
    return-void
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
    .line 41
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public removeDimmedKeyboardTouchedListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$DimmedKeyboardTouchedListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster;->mDimmedKeyboardTouchedListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method
