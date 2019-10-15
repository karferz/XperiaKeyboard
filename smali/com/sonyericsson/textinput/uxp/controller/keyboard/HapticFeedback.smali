.class public final Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;
.super Ljava/lang/Object;
.source "HapticFeedback.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;
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
.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mPlaySound:Z

.field private mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

.field private mSoundVolume:F

.field private final mVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(ZIZI)V
    .locals 0
    .param p1, "playSound"    # Z
    .param p2, "volume"    # I
    .param p3, "vibrate"    # Z
    .param p4, "duration"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mPlaySound:Z

    .line 39
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->setVolume(I)V

    .line 41
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mVibrate:Z

    .line 42
    invoke-virtual {p0, p4}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->setDuration(I)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(ZIZILcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;-><init>(ZIZI)V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->REQUIRED:[Ljava/lang/Class;

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
    .line 46
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
    .line 50
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 51
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mContext:Landroid/content/Context;

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    if-ne p2, v0, :cond_0

    .line 53
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 58
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
    .line 61
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    .line 66
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onFeedback()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mPlaySound:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->playSound()V

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mVibrate:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->vibrate()V

    .line 85
    :cond_1
    return-void
.end method

.method public playSound()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mSoundVolume:F

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->playSound(F)V

    .line 102
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mDuration:I

    .line 110
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 105
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mSoundVolume:F

    .line 106
    return-void
.end method

.method public vibrate()V
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 96
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "HapticFeedback"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
