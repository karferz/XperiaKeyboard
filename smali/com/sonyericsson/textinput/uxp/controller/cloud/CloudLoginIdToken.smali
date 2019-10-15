.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
.super Ljava/lang/Object;
.source "CloudLoginIdToken.java"


# instance fields
.field private final mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

.field private final mTokenData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Ljava/lang/String;)V
    .locals 0
    .param p1, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tokenData"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 24
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->mTokenData:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->mCloudLoginType:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    return-object v0
.end method

.method public getTokenData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->mTokenData:Ljava/lang/String;

    return-object v0
.end method
