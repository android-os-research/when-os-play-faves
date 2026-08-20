.class public final synthetic Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda2;
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

    check-cast p1, Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-static {p1}, Lcom/android/internal/telephony/d2d/Communicator;->$r8$lambda$VT2cn0XSbBKaTC0xrqb4vO1Zddw(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    return-void
.end method
