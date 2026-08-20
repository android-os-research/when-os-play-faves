.class public final synthetic Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->$r8$lambda$5mOxrR3mWQ4kCQwyoDIF3Hq5NiU(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    return-void
.end method
