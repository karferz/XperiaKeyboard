.class public Lcom/sonyericsson/ned/model/validation/CEmptyValidator;
.super Ljava/lang/Object;
.source "CEmptyValidator.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/model/validation/CEmptyValidator$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailureReasons()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public makePossibleToInsert(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 0
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "fragment"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "index"    # I
    .param p4, "validity"    # I

    .prologue
    .line 22
    return-object p2
.end method

.method public possibleToInsert(Lcom/sonyericsson/ned/model/CodePointString;ILcom/sonyericsson/ned/model/CodePointString;)I
    .locals 1
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "index"    # I
    .param p3, "fragment"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method public validate(Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 1
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method
