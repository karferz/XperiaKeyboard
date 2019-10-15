.class public interface abstract Lcom/sonyericsson/ned/controller/ICursorListener;
.super Ljava/lang/Object;
.source "ICursorListener.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# static fields
.field public static final DELETION:I = 0x2

.field public static final INSERTION:I = 0x1

.field public static final MANUAL:I = 0x3

.field public static final OTHER:I = 0x0

.field public static final TEXT_REMOVED:I = 0x4


# virtual methods
.method public abstract onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
.end method

.method public abstract onUpdateInputView(Ljava/lang/Object;)V
.end method
