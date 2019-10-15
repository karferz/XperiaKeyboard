.class public final Lcom/touchtype_fluency/Sequence;
.super Ljava/util/AbstractList;
.source "Sequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/Sequence$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/touchtype_fluency/Term;",
        ">;"
    }
.end annotation


# static fields
.field public static final unspecifiedContact:Ljava/lang/String; = ""

.field public static final unspecifiedFieldHint:Ljava/lang/String; = ""


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 222
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 172
    invoke-direct {p0}, Lcom/touchtype_fluency/Sequence;->createPeer()V

    .line 173
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 176
    iput-wide p1, p0, Lcom/touchtype_fluency/Sequence;->peer:J

    .line 177
    return-void
.end method

.method private native createPeer()V
.end method

.method private native destroyPeer()V
.end method

.method private native equalTo(Lcom/touchtype_fluency/Sequence;)Z
.end method


# virtual methods
.method public native add(ILcom/touchtype_fluency/Term;)V
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Lcom/touchtype_fluency/Term;

    invoke-virtual {p0, p1, p2}, Lcom/touchtype_fluency/Sequence;->add(ILcom/touchtype_fluency/Term;)V

    return-void
.end method

.method public native append(Lcom/touchtype_fluency/Term;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public native dropFirst(I)Lcom/touchtype_fluency/Sequence;
.end method

.method public native dropLast(I)Lcom/touchtype_fluency/Sequence;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 193
    instance-of v0, p1, Lcom/touchtype_fluency/Sequence;

    if-eqz v0, :cond_0

    .line 194
    check-cast p1, Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/Sequence;->equalTo(Lcom/touchtype_fluency/Sequence;)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/touchtype_fluency/Sequence;->destroyPeer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native get(I)Lcom/touchtype_fluency/Term;
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Sequence;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v0

    return-object v0
.end method

.method public native getContact()Ljava/lang/String;
.end method

.method public native getFieldHint()Ljava/lang/String;
.end method

.method public native getType()Lcom/touchtype_fluency/Sequence$Type;
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/touchtype_fluency/Sequence;->getType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence$Type;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/touchtype_fluency/Sequence;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/touchtype_fluency/Sequence;->getFieldHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I

    move-result v3

    mul-int/lit16 v3, v3, 0x95

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x95

    mul-int/lit16 v2, v2, 0x95

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x95

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x95

    return v0
.end method

.method public native prepend(Lcom/touchtype_fluency/Term;)V
.end method

.method public native remove(I)Lcom/touchtype_fluency/Term;
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/touchtype_fluency/Sequence;->remove(I)Lcom/touchtype_fluency/Term;

    move-result-object v0

    return-object v0
.end method

.method public native set(ILcom/touchtype_fluency/Term;)Lcom/touchtype_fluency/Term;
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p2, Lcom/touchtype_fluency/Term;

    invoke-virtual {p0, p1, p2}, Lcom/touchtype_fluency/Sequence;->set(ILcom/touchtype_fluency/Term;)Lcom/touchtype_fluency/Term;

    move-result-object v0

    return-object v0
.end method

.method public native setContact(Ljava/lang/String;)V
.end method

.method public native setFieldHint(Ljava/lang/String;)V
.end method

.method public native setType(Lcom/touchtype_fluency/Sequence$Type;)V
.end method

.method public native size()I
.end method

.method public native subseq(II)Lcom/touchtype_fluency/Sequence;
.end method

.method public native takeFirst(I)Lcom/touchtype_fluency/Sequence;
.end method

.method public native takeLast(I)Lcom/touchtype_fluency/Sequence;
.end method

.method public native toString()Ljava/lang/String;
.end method
