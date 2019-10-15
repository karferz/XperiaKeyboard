.class public Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;
.super Ljava/lang/Object;
.source "SoundFeedback.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sNumberOfSoundStreams:I = 0x5


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private final mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->createNewSoundPool()V

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundId:I

    .line 40
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mAudioManager:Landroid/media/AudioManager;

    .line 41
    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->createOldSoundPool()V

    goto :goto_0
.end method

.method private createNewSoundPool()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 45
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    .line 46
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v2, 0xd

    .line 47
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 49
    .local v0, "attributes":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 51
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    .line 53
    return-void
.end method

.method private createOldSoundPool()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    .line 58
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->TAG:Ljava/lang/String;

    const-string v2, "Error closing the File Descriptor!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playSound(F)V
    .locals 7
    .param p1, "volume"    # F

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->mSoundId:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 73
    :cond_0
    return-void
.end method
