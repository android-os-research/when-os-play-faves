.class public final synthetic Lcom/android/server/chimera/ConservativePolicyHandler$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    invoke-static {p1}, Lcom/android/server/chimera/ConservativePolicyHandler;->$r8$lambda$vsRAeGu-3SKVeW8t0ossr0WWuKE(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)J

    move-result-wide p0

    return-wide p0
.end method
