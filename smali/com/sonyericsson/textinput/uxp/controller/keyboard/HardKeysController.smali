.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;
.super Ljava/lang/Object;
.source "HardKeysController.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;
.implements Lcom/sonyericsson/collaboration/Bindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController$Factory;
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
.field private mBaseKeyHandler:Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

.field private final mCurrentlyPressedKeys:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mCurrentlyPressedKeys:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private isLongPress(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalPress(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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
    .line 58
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
    .line 63
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    if-ne p2, v0, :cond_0

    .line 64
    check-cast p1, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mBaseKeyHandler:Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    .line 66
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
    .line 70
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public onPress(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "consumed":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    .line 27
    .local v1, "scanCode":I
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->isNormalPress(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mBaseKeyHandler:Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    new-instance v4, Lcom/sonyericsson/ned/controller/BaseKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p2, v3, v5}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    move-result v0

    .line 29
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mCurrentlyPressedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mCurrentlyPressedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 31
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mBaseKeyHandler:Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    new-instance v5, Lcom/sonyericsson/ned/controller/BaseKey;

    .line 32
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->isLongPress(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, p2, v2, v6}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 31
    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mCurrentlyPressedKeys:Landroid/util/SparseBooleanArray;

    .line 33
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    .line 32
    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    move v0, v3

    .line 33
    goto :goto_2
.end method

.method public onRelease(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    .line 43
    .local v0, "scanCode":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mCurrentlyPressedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 45
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;->mBaseKeyHandler:Lcom/sonyericsson/ned/controller/IBaseKeyHandler;

    new-instance v2, Lcom/sonyericsson/ned/controller/BaseKey;

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, p2, v3, v4}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/controller/IBaseKeyHandler;->onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z

    move-result v1

    return v1
.end method
