.class Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;
.super Ljava/lang/Object;
.source "CSynchronizer.java"

# interfaces
.implements Lcom/sonyericsson/ned/glue/DelayedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scheduled"
.end annotation


# instance fields
.field final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "code"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;->this$0:Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;->mRunnable:Ljava/lang/Runnable;

    .line 59
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;->this$0:Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;->access$000(Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
