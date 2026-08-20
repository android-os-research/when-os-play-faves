.class public Lcom/samsung/android/bbccommon/BBCHelper;
.super Ljava/lang/Object;
.source "BBCHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "BBCHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callExchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/samsung/android/bbccommon/BBCHelper;->getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static changeAppDomain(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 5

    .line 69
    invoke-static {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static getBBCContainerId(Landroid/content/Context;Z)I
    .registers 5

    .line 30
    invoke-static {}, Lcom/samsung/android/bbccommon/BBCHelper;->getBbcEnabled()I

    move-result v0

    if-eqz p1, :cond_35

    if-lez v0, :cond_35

    const-string p1, "user"

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 35
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v2, :cond_19

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v0, :cond_19

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-eqz p1, :cond_32

    return v0

    :cond_32
    const/16 p0, -0x2710

    return p0

    :cond_35
    return v0
.end method

.method public static getBbcEnabled()I
    .registers 1

    const/16 v0, -0x2710

    return v0
.end method

.method private static getPersonaManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    const-string v0, "persona"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method private static getRCPManager(Landroid/content/Context;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 2

    const-string v0, "rcp"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object p0
.end method

.method public static getSignatureFromMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 55
    invoke-static {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBBCContainer(I)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static restoreAppData(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public static setBBCFlag(Landroid/content/Context;Z)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public static setupComplete(Landroid/content/Context;I)V
    .registers 4

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_setup_complete"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static updateAppToContainer(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 7

    const/4 p0, -0x1

    return p0
.end method
