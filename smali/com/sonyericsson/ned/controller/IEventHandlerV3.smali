.class public interface abstract Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.super Ljava/lang/Object;
.source "IEventHandlerV3.java"


# static fields
.field public static final CANDIDATE_ADDON:I = 0xb

.field public static final CANDIDATE_METHOD:I = 0xc

.field public static final CANDIDATE_METHOD_OVERRIDE:I = 0xe

.field public static final DELETION_ADDON:I = 0x5

.field public static final DELETION_METHOD:I = 0x6

.field public static final DELETION_OVERRIDE:I = 0x7

.field public static final EXPLORE_BY_TOUCH:I = 0x64

.field public static final FALLBACK:I = 0x0

.field public static final HANDLER:I = 0x1

.field public static final INPUT_ADDON:I = 0x8

.field public static final INPUT_METHOD:I = 0x9

.field public static final INPUT_OVERRIDE:I = 0xa

.field public static final KEYBOARD_VISUALIZATION:I = 0xf

.field public static final NAVIGATION_ADDON:I = 0x2

.field public static final NAVIGATION_METHOD:I = 0x3

.field public static final NAVIGATION_OVERRIDE:I = 0x4


# virtual methods
.method public abstract getCategory()I
.end method

.method public abstract getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
.end method

.method public abstract onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
.end method

.method public abstract onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
.end method
