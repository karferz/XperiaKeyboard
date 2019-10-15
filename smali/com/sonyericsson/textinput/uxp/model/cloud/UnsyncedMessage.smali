.class public Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;
.super Ljava/lang/Object;
.source "UnsyncedMessage.java"


# instance fields
.field private final mDate:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;->mMessage:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;->mDate:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method
