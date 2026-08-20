.class public Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RestrictionPolicyDummy;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionPolicyDummy"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addNumberOfIncomingCalls()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist addNumberOfOutgoingCalls()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist canIncomingCall(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist canOutgoingCall(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getEmergencyCallOnly(Z)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isIncomingCallAllowedFromSimSlot(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isOutgoingCallAllowedFromSimSlot(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
