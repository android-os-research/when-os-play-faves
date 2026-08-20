.class public final synthetic Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->$r8$lambda$YjO11kCmSPD0-G1uiu-0ZyyjHl0(Lcom/android/internal/telephony/SemRIL$SehBinderServiceDeathRecipient;)V

    return-void
.end method
