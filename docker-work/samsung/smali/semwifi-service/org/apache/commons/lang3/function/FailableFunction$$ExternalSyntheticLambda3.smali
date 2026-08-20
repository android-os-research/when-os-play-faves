.class public final synthetic Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableFunction;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableFunction;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableFunction;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableFunction$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableFunction;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableFunction;->$r8$lambda$BwGGkTVi_T_yOe917XbQ_gK6xTM(Lorg/apache/commons/lang3/function/FailableFunction;Lorg/apache/commons/lang3/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
