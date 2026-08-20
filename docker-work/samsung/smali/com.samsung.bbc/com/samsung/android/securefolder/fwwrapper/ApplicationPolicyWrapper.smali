.class public Lcom/samsung/android/securefolder/fwwrapper/ApplicationPolicyWrapper;
.super Ljava/lang/Object;
.source "ApplicationPolicyWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPackageToBlackList(Lcom/samsung/android/knox/application/ApplicationPolicy;ILcom/samsung/android/knox/AppIdentity;)I
    .registers 3

    if-eqz p0, :cond_7

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackageToBlackList(ILcom/samsung/android/knox/AppIdentity;)I

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static addPackageToWhiteList(Lcom/samsung/android/knox/application/ApplicationPolicy;ILcom/samsung/android/knox/AppIdentity;)I
    .registers 3

    if-eqz p0, :cond_7

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackageToWhiteList(ILcom/samsung/android/knox/AppIdentity;)I

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
