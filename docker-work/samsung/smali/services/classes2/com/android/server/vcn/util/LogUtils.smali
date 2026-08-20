.class public Lcom/android/server/vcn/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_4
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
