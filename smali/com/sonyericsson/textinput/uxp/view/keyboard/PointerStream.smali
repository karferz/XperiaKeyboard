.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
.super Ljava/lang/Object;
.source "PointerStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z = false

.field private static final GROWTH:I = 0xc8

.field private static final LONG_PRESS_TIMEOUT_LONG:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT_MEDIUM:I = 0x15e

.field private static final LONG_PRESS_TIMEOUT_SHORT:I = 0xfa

.field private static final MAX_POINTS:I = 0x1f4

.field private static final MAX_TIME_COUNT:I = 0xfa

.field private static final REPEAT_INTERVAL:I = 0x78

.field public static final REPEAT_START_DELAY:I = 0x190

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_GROWTH:I = 0x64


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsInitialised:Z

.field private mKeyCount:I

.field private mKeyIndex:I

.field private final mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

.field private final mLastPoint:[I

.field private final mLastPointTime:[J

.field private final mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

.field private mLongPressEnabled:Z

.field private final mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

.field private final mMoveKeyboardKeyCode:I

.field private mPointCount:I

.field private mPointTimes:[J

.field private mPointerId:I

.field private mPoints:[I

.field private mRepeatCount:I

.field private final mRepeatRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;

.field private mStartKeyIndex:I

.field private mStartScreenX:F

.field private mStartScreenY:F

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

.field private final mTraceBoundary:Landroid/graphics/Point;

.field private mTraceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;I)V
    .locals 5
    .param p1, "pointerId"    # I
    .param p2, "listener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;
    .param p3, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;
    .param p4, "moveKeyboardKeyCode"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPointTime:[J

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    .line 74
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    .line 75
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    .line 81
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mIsInitialised:Z

    .line 97
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointerId:I

    .line 98
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    .line 99
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

    .line 100
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mMoveKeyboardKeyCode:I

    .line 102
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceEnabled:Z

    .line 103
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressEnabled:Z

    .line 104
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 105
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceBoundary:Landroid/graphics/Point;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

    .line 108
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;

    .line 109
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getRepeatInterval()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleRepeat(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mMoveKeyboardKeyCode:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isTap(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;)Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressEnabled:Z

    return v0
.end method

.method private add(IIJ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "time"    # J

    .prologue
    const/16 v4, 0x1f4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 428
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    array-length v2, v2

    if-ge v2, v4, :cond_1

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    .line 430
    .local v0, "old":[I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    array-length v2, v2

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    .line 431
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    .line 433
    .local v1, "oldTimes":[J
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, 0x64

    const/16 v3, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    .line 434
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    array-length v3, v1

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    .end local v0    # "old":[I
    .end local v1    # "oldTimes":[J
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    aput p1, v2, v6

    .line 443
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    aput p2, v2, v7

    .line 444
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    aput p1, v2, v3

    .line 445
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    aput p2, v2, v3

    .line 446
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    aput-wide p3, v2, v3

    .line 447
    return-void

    .line 437
    :cond_1
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    .line 438
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v7, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private cancelLongPressTimeouts()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method private cancelRepeatTimer()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method private getLongPressTime(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)J
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getLongpressTimeout()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 483
    const-wide/16 v0, 0x1f4

    :goto_0
    return-wide v0

    .line 478
    :pswitch_0
    const-wide/16 v0, 0xfa

    goto :goto_0

    .line 480
    :pswitch_1
    const-wide/16 v0, 0x15e

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRepeatInterval()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getRepeatInterval(I)I

    move-result v0

    return v0
.end method

.method public static getRepeatInterval(I)I
    .locals 2
    .param p0, "repeatCount"    # I

    .prologue
    .line 112
    div-int/lit8 v0, p0, 0x5

    .line 113
    .local v0, "interval":I
    packed-switch v0, :pswitch_data_0

    .line 119
    const/16 v1, 0x1e

    :goto_0
    return v1

    .line 115
    :pswitch_0
    const/16 v1, 0x78

    goto :goto_0

    .line 117
    :pswitch_1
    const/16 v1, 0x3c

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isClose(IIIIII)Z
    .locals 5
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "xBoundary"    # I
    .param p4, "y1"    # I
    .param p5, "y2"    # I
    .param p6, "yBoundary"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 420
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p3, :cond_0

    move v0, v2

    .line 421
    .local v0, "withinXBoundary":Z
    :goto_0
    sub-int v4, p5, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p6, :cond_1

    move v1, v2

    .line 422
    .local v1, "withinYBoundary":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "withinXBoundary":Z
    .end local v1    # "withinYBoundary":Z
    :cond_0
    move v0, v3

    .line 420
    goto :goto_0

    .restart local v0    # "withinXBoundary":Z
    :cond_1
    move v1, v3

    .line 421
    goto :goto_1

    .restart local v1    # "withinYBoundary":Z
    :cond_2
    move v2, v3

    .line 422
    goto :goto_2
.end method

.method private isTap(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 404
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartX:I

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceBoundary:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartY:I

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceBoundary:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isClose(IIIIII)Z

    move-result v0

    return v0
.end method

.method private rescheduleLongPressTimeout(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 4
    .param p1, "keyIndex"    # I
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 468
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

    invoke-static {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->access$202(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;I)I

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getMetaKey()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;->access$302(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;I)I

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$LongPressRunnable;

    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getLongPressTime(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private rescheduleRepeat(IIZ)V
    .locals 4
    .param p1, "keyIndex"    # I
    .param p2, "delay"    # I
    .param p3, "resetCounter"    # Z

    .prologue
    .line 488
    if-eqz p3, :cond_1

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatRunnable:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$RepeatRunnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    :cond_0
    return-void

    .line 491
    :cond_1
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelRepeatTimer()V

    .line 202
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    .line 203
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyCount:I

    .line 204
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 205
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mIsInitialised:Z

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->resetKeyIndex()V

    .line 207
    return-void
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    return v0
.end method

.method public getLastX()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLastY()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPointCount()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getPointTimes()[J
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointTimes:[J

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPointTime:[J

    goto :goto_0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointerId:I

    return v0
.end method

.method public getPoints()[I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPoints:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    goto :goto_0
.end method

.method public isCloseToLastPoint(III)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "boundaryPx"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLastPoint:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isClose(IIIIII)Z

    move-result v0

    return v0
.end method

.method public isLongPressActive()Z
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressedKey(I)Z
    .locals 2
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 508
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartKeyIndex:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyCount:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrace()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;IIFF)V
    .locals 8
    .param p1, "action"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "screenX"    # F
    .param p5, "screenY"    # F

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 243
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    invoke-interface {v2, v3, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;->findKeyIndex(III)I

    move-result v1

    .line 244
    .local v1, "keyIndex":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    invoke-interface {v2, v3, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;->findKey(III)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 250
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->DOWN:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->UP:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-eq v2, v3, :cond_3

    .line 257
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p2, p3, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->add(IIJ)V

    .line 260
    :cond_3
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$TouchAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$TouchAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    .line 266
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartX:I

    .line 267
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartY:I

    .line 268
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartScreenX:F

    .line 269
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartScreenY:F

    .line 271
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyCount:I

    .line 273
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartX:I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartY:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->add(IIJ)V

    .line 274
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartKeyIndex:I

    .line 275
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onPress(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    .line 288
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mIsInitialised:Z

    if-nez v2, :cond_0

    .line 289
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleLongPressTimeout(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 290
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 292
    const/16 v2, 0x190

    invoke-direct {p0, v1, v2, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleRepeat(IIZ)V

    .line 293
    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    .line 294
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    .line 295
    iput-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mIsInitialised:Z

    goto :goto_0

    .line 301
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 357
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->MOVE_KEYBOARD:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    if-eq v1, v2, :cond_0

    .line 358
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyCount:I

    .line 359
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    goto :goto_0

    .line 303
    :pswitch_2
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceEnabled:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isTap(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 307
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 308
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelRepeatTimer()V

    .line 310
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onStartTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto :goto_1

    .line 315
    :cond_4
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    if-eq v1, v2, :cond_5

    .line 316
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleLongPressTimeout(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 317
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getRepeatInterval()I

    move-result v2

    invoke-direct {p0, v1, v2, v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleRepeat(IIZ)V

    .line 318
    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    .line 320
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onRegularMove(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    goto :goto_1

    .line 328
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto :goto_1

    .line 332
    :pswitch_4
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceEnabled:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->isTap(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 336
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 338
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelRepeatTimer()V

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onStartTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    goto :goto_1

    .line 344
    :cond_6
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    if-eq v1, v2, :cond_7

    .line 345
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleLongPressTimeout(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 347
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onRegularMove(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    goto :goto_1

    .line 352
    :pswitch_5
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartScreenX:F

    sub-float v3, p4, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartScreenY:F

    sub-float v4, p5, v4

    float-to-int v4, v4

    invoke-interface {v2, p0, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onMoveKeyboard(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;II)V

    goto :goto_1

    .line 365
    :pswitch_6
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$keyboard$PointerStream$State:[I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    .line 394
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelRepeatTimer()V

    .line 395
    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartKeyIndex:I

    .line 396
    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    .line 397
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mIsInitialised:Z

    goto/16 :goto_0

    .line 370
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 371
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onRelease(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    goto :goto_2

    .line 377
    :pswitch_8
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onEndTrace(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    .line 378
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    goto :goto_2

    .line 384
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 385
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onRelease(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;I)V

    .line 386
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    goto :goto_2

    .line 389
    :pswitch_a
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnPointerListener;->onEndMoveKeyboard(Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;)V

    .line 390
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    goto :goto_2

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 301
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 365
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public resetKeyIndex()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    .line 211
    return-void
.end method

.method public restart(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 214
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointCount:I

    .line 215
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartX:I

    .line 216
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartY:I

    .line 217
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    invoke-interface {v2, v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;->findKeyIndex(III)I

    move-result v1

    .line 218
    .local v1, "keyIndex":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyboard:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    invoke-interface {v2, v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyboard;->findKey(III)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 220
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartX:I

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartY:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->add(IIJ)V

    .line 221
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mStartKeyIndex:I

    .line 222
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleLongPressTimeout(ILcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 224
    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 226
    const/16 v2, 0x190

    invoke-direct {p0, v1, v2, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->rescheduleRepeat(IIZ)V

    .line 227
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mRepeatCount:I

    .line 228
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyIndex:I

    .line 229
    iput v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mKeyCount:I

    .line 230
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mIsInitialised:Z

    .line 231
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 2
    .param p1, "longPressEnabled"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressEnabled:Z

    .line 184
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mLongPressEnabled:Z

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->cancelLongPressTimeouts()V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->LONG_PRESS:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    .line 187
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 190
    :cond_0
    return-void
.end method

.method public setPointerId(I)V
    .locals 0
    .param p1, "pointerId"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mPointerId:I

    .line 134
    return-void
.end method

.method public setTraceBoundary(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "boundary"    # Landroid/graphics/Point;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceBoundary:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 138
    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 2
    .param p1, "traceEnabled"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceEnabled:Z

    .line 173
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mTraceEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->TRACE:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    if-ne v0, v1, :cond_0

    .line 174
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->mState:Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream$State;

    .line 176
    :cond_0
    return-void
.end method
