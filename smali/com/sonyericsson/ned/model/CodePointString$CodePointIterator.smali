.class Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;
.super Ljava/lang/Object;
.source "CodePointString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/model/CodePointString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodePointIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$0:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->this$0:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->mOffset:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "x1"    # Lcom/sonyericsson/ned/model/CodePointString$1;

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;-><init>(Lcom/sonyericsson/ned/model/CodePointString;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;
    .param p1, "x1"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->mOffset:I

    return p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 524
    iget v0, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->mOffset:I

    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->this$0:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->access$200(Lcom/sonyericsson/ned/model/CodePointString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->this$0:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->access$200(Lcom/sonyericsson/ned/model/CodePointString;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 530
    .local v0, "result":Ljava/lang/Integer;
    iget v1, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->mOffset:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->mOffset:I

    .line 531
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString$CodePointIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 536
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
