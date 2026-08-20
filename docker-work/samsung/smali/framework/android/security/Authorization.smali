.class public Landroid/security/Authorization;
.super Ljava/lang/Object;
.source "Authorization.java"


# static fields
.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "KeystoreAuthorization"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I
    .registers 4
    .param p0, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 52
    :try_start_0
    invoke-static {}, Landroid/security/Authorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/security/authorization/IKeystoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    .line 53
    const/4 v0, 0x0

    return v0

    .line 57
    :catch_9
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 54
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeystoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x4

    return v1
.end method

.method public static blacklist addAuthToken([B)I
    .registers 2
    .param p0, "authToken"    # [B

    .line 68
    invoke-static {p0}, Landroid/security/AuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;

    move-result-object v0

    invoke-static {v0}, Landroid/security/Authorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I

    move-result v0

    return v0
.end method

.method private static blacklist getService()Landroid/security/authorization/IKeystoreAuthorization;
    .registers 1

    .line 40
    nop

    .line 41
    const-string v0, "android.security.authorization"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist onLockScreenEvent(ZI[B[J)I
    .registers 8
    .param p0, "locked"    # Z
    .param p1, "userId"    # I
    .param p2, "syntheticPassword"    # [B
    .param p3, "unlockingSids"    # [J

    .line 85
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 86
    :try_start_3
    invoke-static {}, Landroid/security/Authorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onLockScreenEvent(II[B[J)V

    goto :goto_14

    .line 88
    :cond_d
    invoke-static {}, Landroid/security/Authorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onLockScreenEvent(II[B[J)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_14} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_14} :catch_15

    .line 91
    :goto_14
    return v0

    .line 95
    :catch_15
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 92
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_19
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeystoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v1, 0x4

    return v1
.end method
