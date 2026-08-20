.class public final synthetic Lcom/android/internal/telephony/PhoneInternalInterface$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->$r8$lambda$4sbZNDYHgI49tL4Z-OF7ymhc9kM(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method
