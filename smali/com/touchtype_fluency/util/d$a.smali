.class final Lcom/touchtype_fluency/util/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/touchtype_fluency/util/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/touchtype_fluency/util/d;

.field private b:Lcom/touchtype_fluency/util/ProgressListener;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/d;Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput v0, p0, Lcom/touchtype_fluency/util/d$a;->c:I

    .line 154
    iput v0, p0, Lcom/touchtype_fluency/util/d$a;->d:I

    .line 159
    iput-object p1, p0, Lcom/touchtype_fluency/util/d$a;->a:Lcom/touchtype_fluency/util/d;

    .line 160
    iput-object p2, p0, Lcom/touchtype_fluency/util/d$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    .line 162
    iget v0, p0, Lcom/touchtype_fluency/util/d$a;->c:I

    iget v1, p0, Lcom/touchtype_fluency/util/d$a;->d:I

    invoke-static {p2, v0, v1}, Lcom/touchtype_fluency/util/d$a;->a(Lcom/touchtype_fluency/util/ProgressListener;II)V

    .line 163
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/touchtype_fluency/util/d$a;->c:I

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/touchtype_fluency/util/d$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/touchtype_fluency/util/ProgressListener;II)V
    .locals 0

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p0, p1, p2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/d$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    .line 170
    iget v0, p0, Lcom/touchtype_fluency/util/d$a;->c:I

    .line 171
    iget v1, p0, Lcom/touchtype_fluency/util/d$a;->d:I

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {p1, v0, v1}, Lcom/touchtype_fluency/util/d$a;->a(Lcom/touchtype_fluency/util/ProgressListener;II)V

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getInsufficientStorageThreshold()J
    .locals 2

    .prologue
    .line 234
    const-class v1, Lcom/touchtype_fluency/util/d;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    .line 236
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-interface {v0}, Lcom/touchtype_fluency/util/ProgressListener;->getInsufficientStorageThreshold()J

    move-result-wide v0

    return-wide v0

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V
    .locals 2
    .param p1, "result"    # Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .prologue
    .line 206
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$a;->a:Lcom/touchtype_fluency/util/d;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$a;->a:Lcom/touchtype_fluency/util/d;

    invoke-static {v0}, Lcom/touchtype_fluency/util/d;->g(Lcom/touchtype_fluency/util/d;)V

    .line 211
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$a;->a:Lcom/touchtype_fluency/util/d;

    invoke-static {v0}, Lcom/touchtype_fluency/util/d;->h(Lcom/touchtype_fluency/util/d;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/d$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    .line 216
    invoke-direct {p0}, Lcom/touchtype_fluency/util/d$a;->a()V

    .line 217
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v0, p1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V

    .line 224
    :cond_1
    return-void

    .line 217
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onProgress(II)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "maximum"    # I

    .prologue
    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/d$a;->b:Lcom/touchtype_fluency/util/ProgressListener;

    .line 197
    iput p1, p0, Lcom/touchtype_fluency/util/d$a;->c:I

    .line 198
    iput p2, p0, Lcom/touchtype_fluency/util/d$a;->d:I

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-static {v0, p1, p2}, Lcom/touchtype_fluency/util/d$a;->a(Lcom/touchtype_fluency/util/ProgressListener;II)V

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
