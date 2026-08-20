.class public final synthetic Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
