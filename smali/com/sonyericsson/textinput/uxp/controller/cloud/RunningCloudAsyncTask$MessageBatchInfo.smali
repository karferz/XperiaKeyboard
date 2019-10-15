.class final Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;
.super Ljava/lang/Object;
.source "RunningCloudAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageBatchInfo"
.end annotation


# instance fields
.field private mLastMessageTimestamp:Ljava/lang/Long;

.field private mMarker:Ljava/lang/String;

.field private mMessageTotal:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$1;

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getMarker()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getLastMessageTimestamp()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->setmLastMessageTimestamp(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->setMarker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->setMessageTotal(I)V

    return-void
.end method

.method private getLastMessageTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->mLastMessageTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method private getMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->mMarker:Ljava/lang/String;

    return-object v0
.end method

.method private getMessageTotal()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->mMessageTotal:I

    return v0
.end method

.method private setMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->mMarker:Ljava/lang/String;

    .line 1119
    return-void
.end method

.method private setMessageTotal(I)V
    .locals 0
    .param p1, "messageTotal"    # I

    .prologue
    .line 1134
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->mMessageTotal:I

    .line 1135
    return-void
.end method

.method private setmLastMessageTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "lastMessageTimestamp"    # Ljava/lang/Long;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->mLastMessageTimestamp:Ljava/lang/Long;

    .line 1127
    return-void
.end method


# virtual methods
.method public isFinishedFetchingMessages()Z
    .locals 4

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getLastMessageTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getLastMessageTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/RunningCloudAsyncTask$MessageBatchInfo;->getMessageTotal()I

    move-result v0

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
