.class public Lcom/samsung/android/securefolder/fwwrapper/TrustManagerWrapper;
.super Ljava/lang/Object;
.source "TrustManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDeviceLockedForUser(Landroid/content/Context;IZ)V
    .registers 4

    const-string v0, "trust"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    return-void
.end method
