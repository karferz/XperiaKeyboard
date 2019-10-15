.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;
.super Ljava/lang/Object;
.source "PopupContainerManager.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$Factory;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;
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
.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerOffset:Landroid/graphics/Point;

.field private mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private final mPopupContainerEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mPopupContainerEventListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private fireOnInitiation()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mPopupContainerEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;

    .line 168
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->fireOnInitiation(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V

    goto :goto_0

    .line 170
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;
    :cond_0
    return-void
.end method

.method private fireOnInitiation(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainerOffset:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 181
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardTotalSpanWidthPx()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 182
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->getKeyboardHeightPx()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 180
    invoke-interface {p1, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;->onPopupContainerInitiation(Landroid/view/ViewGroup;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 183
    return-void
.end method

.method private fireOnOffsetChanged()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mPopupContainerEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;

    .line 192
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainerOffset:Landroid/graphics/Point;

    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;->onPopupContainerOffsetChanged(Landroid/graphics/Point;)V

    goto :goto_0

    .line 194
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPopupContainerEventListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mPopupContainerEventListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->fireOnInitiation(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V

    .line 148
    :cond_0
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
    .line 55
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
    .line 48
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    if-ne p2, v0, :cond_0

    .line 49
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mISizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 51
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mPopupContainerEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 74
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
    .line 60
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPopupContainerOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainerOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public initiate(Landroid/view/ViewGroup;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "popupContainer"    # Landroid/view/ViewGroup;
    .param p2, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainer:Landroid/view/ViewGroup;

    .line 87
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainerOffset:Landroid/graphics/Point;

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->fireOnInitiation()V

    .line 89
    return-void
.end method

.method public isInitiated()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePopupContainerEventListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mPopupContainerEventListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public setPopupContainerOffset(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainerOffset:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->mContainerOffset:Landroid/graphics/Point;

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;->fireOnOffsetChanged()V

    .line 131
    :cond_0
    return-void
.end method
