.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;
.super Ljava/lang/Object;
.source "KbdController.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;
.implements Lcom/sonyericsson/collaboration/Bindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController$Factory;
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
.field private mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->REQUIRED:[Ljava/lang/Class;

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
    .line 74
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    if-ne p2, v0, :cond_0

    .line 75
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 83
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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
    .line 87
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public onCancel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 53
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x4

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onEndTrace(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 6
    .param p1, "pointEventContainer"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 67
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x6

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 39
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onMoveTo(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 93
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x7

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onPress(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    const/4 v2, 0x0

    .line 24
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 25
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v5, Lcom/sonyericsson/ned/controller/BaseKey;

    invoke-direct {v5, p1, v2, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v5}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 31
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 32
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onRepeat(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 46
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x3

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method

.method public onTrace(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->mBaseKeyHandlers:[Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 60
    .local v0, "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v5, 0x5

    invoke-direct {v4, p1, v5, p1}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "handler":Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
    :cond_0
    return-void
.end method
