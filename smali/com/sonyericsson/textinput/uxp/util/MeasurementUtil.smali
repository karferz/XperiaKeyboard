.class public final Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;
.super Ljava/lang/Object;
.source "MeasurementUtil.java"


# static fields
.field private static final DO_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static final UNMEASURED:J = -0x1L

.field private static sMeasuredTime:J

.field private static sMeasurementActive:Z

.field private static sStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->TAG:Ljava/lang/String;

    .line 27
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasuredTime:J

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasurementActive:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getMeasuredTime()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 91
    sget-wide v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasuredTime:J

    .line 92
    .local v0, "showTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 93
    sput-wide v4, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasuredTime:J

    .line 98
    :cond_0
    return-wide v0
.end method

.method public static isMeasurementActive()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasurementActive:Z

    return v0
.end method

.method public static setMeasurementActive(Z)V
    .locals 0
    .param p0, "active"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasurementActive:Z

    .line 55
    return-void
.end method

.method public static startMeasuring()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sStartTime:J

    .line 66
    return-void
.end method

.method public static stopMeasuring()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 73
    sget-wide v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sStartTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sMeasuredTime:J

    .line 75
    sput-wide v4, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->sStartTime:J

    .line 80
    :cond_0
    return-void
.end method
