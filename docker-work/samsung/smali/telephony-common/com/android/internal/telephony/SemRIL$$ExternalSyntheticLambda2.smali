.class public final synthetic Lcom/android/internal/telephony/SemRIL$$ExternalSyntheticLambda2;
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

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->$r8$lambda$pluU6Al1L87OAuVcSVE3p7YFsok(Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method
