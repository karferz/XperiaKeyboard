.class final Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;,
        Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;
    }
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mListeners:Ljava/util/Set;

    .line 49
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mGestureListener:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mGestureListener:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;
    .param p1, "x1"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->fireOnVerticalSwipe(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;
    .param p1, "x1"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->fireOnHorizontalSwipe(F)V

    return-void
.end method

.method private fireOnHorizontalSwipe(F)V
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;

    .line 61
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;->onHorizontalSwipe(F)V

    goto :goto_0

    .line 63
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;
    :cond_0
    return-void
.end method

.method private fireOnVerticalSwipe(F)V
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;

    .line 71
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;->onVerticalSwipe(F)V

    goto :goto_0

    .line 73
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method addListener(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mGestureListener:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->hasDispatchedSwipe()Z

    move-result v0

    return v0
.end method

.method removeListener(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$Listener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->mListeners:Ljava/util/Set;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method
