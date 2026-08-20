.class public final synthetic Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    check-cast p2, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataUtils;->$r8$lambda$1hdlC8Dh0WhAQy8JagZaOxNJgqw(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)I

    move-result p0

    return p0
.end method
