.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

    iput-wide p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;->f$1:D

    iput-wide p4, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;->f$2:D

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

    iget-wide v1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;->f$1:D

    iget-wide v3, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda18;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$K0TKYDGaC9fA68FY33Mef-joM04(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)D

    move-result-wide v0

    return-wide v0
.end method
