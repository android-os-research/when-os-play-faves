.class public Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;
.super Ljava/lang/Object;
.source "ActiveTrafficFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsDataConnectionConnected:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter$ActiveTrafficFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 8

    .line 51
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_23

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result p4

    if-nez p4, :cond_23

    .line 52
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p4

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2, p1, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_23

    return v0

    .line 57
    :cond_23
    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    if-eqz p0, :cond_7b

    const-string/jumbo p0, "sdhms"

    .line 58
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 60
    invoke-static {p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 62
    :try_start_36
    invoke-interface {p0, p3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->isDownLoadingForUid(I)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 63
    sget-object p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_5f} :catch_62

    const/16 p0, 0x8

    return p0

    :catch_62
    move-exception p0

    .line 69
    sget-object p1, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isDownloadingPackage exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_7b
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public updateDataConnectionInfo()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 80
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    .line 82
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v0, :cond_37

    .line 83
    sget-object v0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method
