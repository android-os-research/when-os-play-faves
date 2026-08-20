.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda44;
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

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->$r8$lambda$r7LZgn-y0Xtn7lIEay9cc5DyJTk(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    return-void
.end method
