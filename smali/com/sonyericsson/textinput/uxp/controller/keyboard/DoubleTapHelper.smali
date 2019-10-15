.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;
.super Ljava/lang/Object;
.source "DoubleTapHelper.java"


# static fields
.field private static final DEFAULT_DOUBLE_TAP_DELAY:J


# instance fields
.field private mLastClick:J

.field private final mTapDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->DEFAULT_DOUBLE_TAP_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->DEFAULT_DOUBLE_TAP_DELAY:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;-><init>(J)V

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "doubleTapDelay"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->mTapDelay:J

    .line 38
    return-void
.end method


# virtual methods
.method public doTapAndEvaluateDoubleTap()Z
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 48
    .local v0, "elapsedTime":J
    iget-wide v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->mLastClick:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->mTapDelay:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 49
    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/DoubleTapHelper;->mLastClick:J

    .line 50
    const/4 v2, 0x0

    .line 52
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
