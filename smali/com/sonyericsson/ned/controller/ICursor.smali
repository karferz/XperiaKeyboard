.class public interface abstract Lcom/sonyericsson/ned/controller/ICursor;
.super Ljava/lang/Object;
.source "ICursor.java"


# static fields
.field public static final LEFT_GRAPHEME:I = 0x1

.field public static final LEFT_TO_RIGHT:I = 0x1

.field public static final LEFT_WORD:I = 0x3

.field public static final LINE_ABOVE:I = 0x5

.field public static final LINE_BELOW:I = 0x4

.field public static final NEUTRAL:I = 0x0

.field public static final NEXT_WORD:I = 0x8

.field public static final PREVIOUS_WORD:I = 0x9

.field public static final RIGHT_GRAPHEME:I = 0x0

.field public static final RIGHT_TO_LEFT:I = 0x2

.field public static final RIGHT_WORD:I = 0x2

.field public static final WORD_ABOVE:I = 0x7

.field public static final WORD_BELOW:I = 0x6


# virtual methods
.method public abstract getFuturePosition(I)Lcom/sonyericsson/ned/controller/CursorPosition;
.end method

.method public abstract getFuturePosition(ILcom/sonyericsson/ned/controller/CursorPosition;)Lcom/sonyericsson/ned/controller/CursorPosition;
.end method

.method public abstract getFuturePosition(Lcom/sonyericsson/ned/controller/CursorPosition;I)Lcom/sonyericsson/ned/controller/CursorPosition;
.end method

.method public abstract getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;
.end method

.method public abstract getWritingDirection(Lcom/sonyericsson/ned/controller/CursorPosition;)I
.end method

.method public abstract setPosition(I)V
.end method

.method public abstract setPosition(Lcom/sonyericsson/ned/controller/CursorPosition;)V
.end method
