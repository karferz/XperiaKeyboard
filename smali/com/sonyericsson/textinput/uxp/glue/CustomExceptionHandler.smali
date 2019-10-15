.class public Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;
.super Ljava/lang/Object;
.source "CustomExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Lcom/sonyericsson/collaboration/Bindable;


# static fields
.field private static final DEBUG:Z

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sLogger:Lcom/sonyericsson/collaboration/OnDebugListener$Logger;


# instance fields
.field private mOnDebugListeners:[Lcom/sonyericsson/collaboration/OnDebugListener;

.field private final mOriginalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/collaboration/OnDebugListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->REQUIRED:[Ljava/lang/Class;

    .line 22
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler$1;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->sLogger:Lcom/sonyericsson/collaboration/OnDebugListener$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOriginalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 33
    return-void
.end method

.method private fireOnReportDebugInformation()V
    .locals 6

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOnDebugListeners:[Lcom/sonyericsson/collaboration/OnDebugListener;

    if-eqz v2, :cond_0

    .line 38
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOnDebugListeners:[Lcom/sonyericsson/collaboration/OnDebugListener;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 39
    .local v1, "listener":Lcom/sonyericsson/collaboration/OnDebugListener;
    sget-object v5, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->sLogger:Lcom/sonyericsson/collaboration/OnDebugListener$Logger;

    invoke-interface {v1, v5}, Lcom/sonyericsson/collaboration/OnDebugListener;->onReportDebugInformation(Lcom/sonyericsson/collaboration/OnDebugListener$Logger;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "listener":Lcom/sonyericsson/collaboration/OnDebugListener;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "TextInput"

    const-string v3, "Unexpected exception occured during CustomExceptionHandler::fireOnReportDebugInformation()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
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
    .line 62
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, p1, [Lcom/sonyericsson/collaboration/OnDebugListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOnDebugListeners:[Lcom/sonyericsson/collaboration/OnDebugListener;

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOnDebugListeners:[Lcom/sonyericsson/collaboration/OnDebugListener;

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
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
    .line 58
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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
    .line 68
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getOriginalHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOriginalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->fireOnReportDebugInformation()V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->mOriginalExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
