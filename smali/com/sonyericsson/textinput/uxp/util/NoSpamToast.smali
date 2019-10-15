.class public final Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;
.super Ljava/lang/Object;
.source "NoSpamToast.java"


# static fields
.field private static final MINIMUM_LONG_TIME_BETWEEN_TOASTS:J = 0xfa0L

.field private static final MINIMUM_SHORT_TIME_BETWEEN_TOASTS:J = 0x9c4L

.field private static sLastDataTrafficWarningToastShowTime:J

.field private static sLastDuration:I

.field private static sLastToastStringId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastDuration:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static doMakeToastIfNeeded(Landroid/content/Context;III)Landroid/widget/Toast;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "gravity"    # I

    .prologue
    const/4 v10, 0x0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, "now":J
    sget-wide v6, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastDataTrafficWarningToastShowTime:J

    sub-long v2, v0, v6

    .line 38
    .local v2, "timeSinceLastShowingOfToast":J
    sget v5, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastDuration:I

    if-nez v5, :cond_2

    const-wide/16 v6, 0x9c4

    :goto_0
    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    int-to-long v6, p1

    sget-wide v8, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastToastStringId:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 42
    :cond_0
    sput-wide v0, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastDataTrafficWarningToastShowTime:J

    .line 43
    int-to-long v6, p1

    sput-wide v6, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastToastStringId:J

    .line 44
    sput p2, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->sLastDuration:I

    .line 45
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 46
    .local v4, "toast":Landroid/widget/Toast;
    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v4, p3, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 52
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_1
    :goto_1
    return-object v4

    .line 38
    :cond_2
    const-wide/16 v6, 0xfa0

    goto :goto_0

    .line 52
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static makeToastIfNeededAndShow(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 65
    const/16 v0, 0x50

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->doMakeToastIfNeeded(Landroid/content/Context;III)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeToastIfNeededAndShow(Landroid/content/Context;III)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/util/NoSpamToast;->doMakeToastIfNeeded(Landroid/content/Context;III)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method
