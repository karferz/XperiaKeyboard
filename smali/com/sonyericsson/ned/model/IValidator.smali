.class public interface abstract Lcom/sonyericsson/ned/model/IValidator;
.super Ljava/lang/Object;
.source "IValidator.java"


# static fields
.field public static final NOT_VALID:I = 0x0

.field public static final VALID:I = 0x2

.field public static final VALID_SO_FAR:I = 0x1


# virtual methods
.method public abstract getFailureReasons()[Ljava/lang/String;
.end method

.method public abstract makePossibleToInsert(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract possibleToInsert(Lcom/sonyericsson/ned/model/CodePointString;ILcom/sonyericsson/ned/model/CodePointString;)I
.end method

.method public abstract validate(Lcom/sonyericsson/ned/model/CodePointString;)I
.end method
