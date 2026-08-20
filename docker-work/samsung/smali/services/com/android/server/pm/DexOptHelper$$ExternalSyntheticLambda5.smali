.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;
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

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {p1}, Lcom/android/server/pm/DexOptHelper;->$r8$lambda$cWOBPVJ74qdRu-7GQBr92tLGeCE(Lcom/android/server/pm/pkg/PackageStateInternal;)J

    move-result-wide p0

    return-wide p0
.end method
