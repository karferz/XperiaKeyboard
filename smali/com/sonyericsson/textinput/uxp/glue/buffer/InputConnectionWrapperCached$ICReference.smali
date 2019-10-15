.class public Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
.super Ljava/lang/Object;
.source "InputConnectionWrapperCached.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICReference"
.end annotation


# instance fields
.field private final mInputConnection:Landroid/view/inputmethod/InputConnection;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 764
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method private getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method
