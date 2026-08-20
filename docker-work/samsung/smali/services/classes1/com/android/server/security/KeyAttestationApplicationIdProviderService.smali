.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x434

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 52
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This service can only be used by Keystore or Credstore"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_15
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 57
    :try_start_19
    iget-object v2, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 61
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 62
    array-length v3, v2

    new-array v3, v3, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    const/4 v4, 0x0

    .line 64
    :goto_29
    array-length v5, v2

    if-ge v4, v5, :cond_48

    .line 65
    iget-object v5, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v6, v2, v4

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 67
    new-instance v6, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v7, v2, v4

    .line 68
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;J[Landroid/content/pm/Signature;)V

    aput-object v6, v3, v4
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_45} :catch_5b
    .catchall {:try_start_19 .. :try_end_45} :catchall_59

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 73
    :cond_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    new-instance p0, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {p0, v3}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object p0

    .line 59
    :cond_51
    :try_start_51
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "No packages for uid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_59} :catch_5b
    .catchall {:try_start_51 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    goto :goto_66

    :catch_5b
    move-exception p0

    .line 71
    :try_start_5c
    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_59

    .line 73
    :goto_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw p0
.end method
