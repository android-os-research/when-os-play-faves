.class public Lcom/samsung/android/server/wifi/util/KnoxUtils;
.super Ljava/lang/Object;
.source "KnoxUtils.java"


# static fields
.field static mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auditLog(Landroid/content/Context;IIZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    const-string v0, "content://com.sec.knox.provider/AuditLog"

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "severity"

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "group"

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "outcome"

    .line 46
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "uid"

    .line 47
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "component"

    .line 48
    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message"

    .line 49
    invoke-virtual {v1, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_49
    return-void
.end method

.method private static checkAndGetCertificatePolicy()V
    .registers 1

    .line 82
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    if-nez v0, :cond_e

    .line 83
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    :cond_e
    return-void
.end method

.method private static checkAndGetWifiPolicy()V
    .registers 1

    .line 61
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v0, :cond_e

    const-string v0, "wifi_policy"

    .line 62
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    sput-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    :cond_e
    return-void
.end method

.method public static isNotAllowedOpenMobileHotspot(I)Z
    .registers 3

    .line 68
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->checkAndGetWifiPolicy()V

    .line 69
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isSupported()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isWifiStateChangeAllowed(I)Z
    .registers 3

    .line 73
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->checkAndGetWifiPolicy()V

    .line 74
    sget-object v0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static notifyCertificateFailureAsUser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 89
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->checkAndGetCertificatePolicy()V

    .line 90
    sget-object p0, Lcom/samsung/android/server/wifi/util/KnoxUtils;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "wifi_module"

    .line 91
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_e
    return-void
.end method
