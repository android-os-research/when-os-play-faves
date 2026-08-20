.class public final synthetic Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableBiConsumer;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableBiConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableBiConsumer;->$r8$lambda$xjeusUiI3vQlvTYaheSocu47I2s(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
