.class public final synthetic Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->$r8$lambda$KlVFBof4GmASDhBrIo3B-_Zxgwg(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V

    return-void
.end method
