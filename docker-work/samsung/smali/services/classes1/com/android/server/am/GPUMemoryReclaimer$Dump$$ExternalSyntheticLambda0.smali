.class public final synthetic Lcom/android/server/am/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;

    check-cast p2, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;

    invoke-static {p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->$r8$lambda$QMQHuTwmHxxJ1aspZq0gKqvlSRA(Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;)I

    move-result p0

    return p0
.end method
