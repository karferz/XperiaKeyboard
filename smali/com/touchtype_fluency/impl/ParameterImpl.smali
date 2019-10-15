.class public Lcom/touchtype_fluency/impl/ParameterImpl;
.super Ljava/lang/Object;
.source "ParameterImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/Parameter;


# instance fields
.field private parameterSet:Lcom/touchtype_fluency/impl/ParameterSetImpl;

.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>(JLcom/touchtype_fluency/impl/ParameterSetImpl;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/impl/ParameterImpl;->peer:J

    iput-object p3, p0, Lcom/touchtype_fluency/impl/ParameterImpl;->parameterSet:Lcom/touchtype_fluency/impl/ParameterSetImpl;

    return-void
.end method


# virtual methods
.method public native defaultValue()Ljava/lang/Object;
.end method

.method public native getValue()Ljava/lang/Object;
.end method

.method public native getValueType()Ljava/lang/Class;
.end method

.method public native maxValue()Ljava/lang/Object;
.end method

.method public native minValue()Ljava/lang/Object;
.end method

.method public native reset()V
.end method

.method public native setDefaultValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method public native setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method
