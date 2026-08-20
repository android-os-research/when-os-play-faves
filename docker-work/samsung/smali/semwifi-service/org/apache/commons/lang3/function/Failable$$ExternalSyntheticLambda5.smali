.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget p0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/Failable;->$r8$lambda$IZOPp94J2LZmS97LQgyaY3WYA4M(Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method
