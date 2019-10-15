.class public Lcom/sonyericsson/ned/controller/method/ReopenData;
.super Ljava/lang/Object;
.source "ReopenData.java"


# instance fields
.field final textBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

.field wasPreviousWordPredicted:Z

.field final wordInText:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Z)V
    .locals 1
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "wordInText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "wasPreviousWordPredicted"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/ReopenData;->wasPreviousWordPredicted:Z

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/ReopenData;->textBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 24
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/method/ReopenData;->wordInText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 25
    iput-boolean p3, p0, Lcom/sonyericsson/ned/controller/method/ReopenData;->wasPreviousWordPredicted:Z

    .line 26
    return-void
.end method
