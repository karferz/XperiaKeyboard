.class public interface abstract Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;
.super Ljava/lang/Object;
.source "IMultitapInputMethodListener.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# static fields
.field public static final NEW_SELECTION:I = 0x1

.field public static final OTHER:I = 0x2

.field public static final TIMEOUT:I


# virtual methods
.method public abstract onSelectionChanged(Ljava/lang/Object;IJ)V
.end method

.method public abstract onSelectionMade(Ljava/lang/Object;II)V
.end method

.method public abstract onSelectionStarted(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;)V
.end method
