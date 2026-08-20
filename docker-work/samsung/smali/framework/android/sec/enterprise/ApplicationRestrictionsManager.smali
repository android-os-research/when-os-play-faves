.class public Landroid/sec/enterprise/ApplicationRestrictionsManager;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsManager.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-string v0, "ApplicationRestrictionsManager"

    sput-object v0, Landroid/sec/enterprise/ApplicationRestrictionsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 36
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 37
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_14

    .line 38
    if-eqz p1, :cond_a

    move-object v1, p1

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 39
    .local v1, "pn":Ljava/lang/String;
    :goto_f
    invoke-interface {v0, v1, p2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_1b

    return-object v2

    .line 43
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    .end local v1    # "pn":Ljava/lang/String;
    :cond_14
    nop

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 41
    :catch_1b
    move-exception v0

    .line 42
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
