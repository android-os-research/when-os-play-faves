.class Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryDummy;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyKnoxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceInventoryDummy"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCallsCount(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public blacklist isCallingCaptureEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method
