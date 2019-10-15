.class public final Lcom/touchtype_fluency/TouchHistory;
.super Ljava/lang/Object;
.source "TouchHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/TouchHistory$ShiftState;
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 559
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0}, Lcom/touchtype_fluency/TouchHistory;->createPeer()V

    .line 55
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-wide p1, p0, Lcom/touchtype_fluency/TouchHistory;->peer:J

    .line 549
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/touchtype_fluency/TouchHistory;->createPeer()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/TouchHistory;->addStringByGraphemeClusters(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private static native areEqual(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/TouchHistory;)Z
.end method

.method private native createPeer()V
.end method

.method private native destroyPeer()V
.end method


# virtual methods
.method public addCharacter(Ljava/lang/Character;)V
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;J)V

    return-void
.end method

.method public native addCharacter(Ljava/lang/Character;J)V
.end method

.method public addCharacter(Ljava/lang/Character;Z)V
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;ZJ)V

    return-void
.end method

.method public native addCharacter(Ljava/lang/Character;ZJ)V
.end method

.method public native addKeyPressOptions([Lcom/touchtype_fluency/KeyPress;)V
.end method

.method public native addKeyPressOptions([Lcom/touchtype_fluency/KeyPress;Z)V
.end method

.method public addMultiCharacter(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addMultiCharacter(Ljava/lang/String;J)V

    return-void
.end method

.method public native addMultiCharacter(Ljava/lang/String;J)V
.end method

.method public addMultiCharacter(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addMultiCharacter(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public native addMultiCharacter(Ljava/lang/String;ZJ)V
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V
    .locals 7

    .prologue
    .line 218
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "__default__"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZJLjava/lang/String;)V

    return-void
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;J)V
    .locals 7

    .prologue
    .line 280
    const/4 v3, 0x0

    const-string v6, "__default__"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZJLjava/lang/String;)V

    .line 281
    return-void
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 256
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZJLjava/lang/String;)V

    return-void
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;Z)V
    .locals 7

    .prologue
    .line 245
    const-wide/16 v4, 0x0

    const-string v6, "__default__"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZJLjava/lang/String;)V

    return-void
.end method

.method public native addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZJLjava/lang/String;)V
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 269
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;ZJLjava/lang/String;)V

    return-void
.end method

.method public native addStringByCodepoints(Ljava/lang/String;)V
.end method

.method public native addStringByGraphemeClusters(Ljava/lang/String;)V
.end method

.method public addTrace(Lcom/touchtype_fluency/Point;)V
    .locals 3

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    const-string v2, "__default__"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/touchtype_fluency/TouchHistory;->addTrace(Lcom/touchtype_fluency/Point;JLjava/lang/String;)V

    return-void
.end method

.method public addTrace(Lcom/touchtype_fluency/Point;J)V
    .locals 2

    .prologue
    .line 338
    const-string v0, "__default__"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/touchtype_fluency/TouchHistory;->addTrace(Lcom/touchtype_fluency/Point;JLjava/lang/String;)V

    return-void
.end method

.method public native addTrace(Lcom/touchtype_fluency/Point;JLjava/lang/String;)V
.end method

.method public addTrace(Lcom/touchtype_fluency/Point;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 322
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/touchtype_fluency/TouchHistory;->addTrace(Lcom/touchtype_fluency/Point;JLjava/lang/String;)V

    return-void
.end method

.method public native appendHistory(Lcom/touchtype_fluency/TouchHistory;)V
.end method

.method public appendSample(Lcom/touchtype_fluency/Point;)V
    .locals 2

    .prologue
    .line 366
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    return-void
.end method

.method public native appendSample(Lcom/touchtype_fluency/Point;J)V
.end method

.method public native dropFirst(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native dropFirstTerms(Lcom/touchtype_fluency/Prediction;I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native dropLast(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 541
    instance-of v0, p1, Lcom/touchtype_fluency/TouchHistory;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/touchtype_fluency/TouchHistory;

    invoke-static {p0, p1}, Lcom/touchtype_fluency/TouchHistory;->areEqual(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/TouchHistory;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/touchtype_fluency/TouchHistory;->destroyPeer()V

    .line 553
    return-void
.end method

.method public native hashCode()I
.end method

.method public native size()I
.end method

.method public native takeFirst(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native takeFirstTerms(Lcom/touchtype_fluency/Prediction;I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native takeLast(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native toString()Ljava/lang/String;
.end method
