.class Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$TapTimer;
.super Ljava/lang/Object;
.source "CMultitapInputMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TapTimer"
.end annotation


# instance fields
.field private final multitap:Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;)V
    .locals 0
    .param p1, "multitap"    # Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$TapTimer;->multitap:Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;

    .line 640
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$TapTimer;->multitap:Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->access$100(Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;I)V

    .line 645
    return-void
.end method
