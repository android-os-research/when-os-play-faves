.class public final synthetic Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->$r8$lambda$9WT-xITj2FcpBiGMhFGRM7Tw9p0(Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;)J

    move-result-wide p0

    return-wide p0
.end method
