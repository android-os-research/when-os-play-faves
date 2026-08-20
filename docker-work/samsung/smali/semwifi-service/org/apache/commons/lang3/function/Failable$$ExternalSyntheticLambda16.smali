.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iput-wide p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iget-wide v1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda16;->f$1:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$FkMuyGX1YORpTvpBaNgpXS58Su8(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    return-void
.end method
