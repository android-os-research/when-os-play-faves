.class public Lcom/android/server/locksettings/LockSettingsService$Injector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public binderGetCallingUid()I
    .registers 1

    .line 678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 1

    .line 610
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 571
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;
    .registers 1

    const-string p0, "dar"

    .line 730
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 633
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .registers 1

    .line 643
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object p0

    return-object p0
.end method

.method public getEdmService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    const-string p0, "enterprise_policy"

    .line 638
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 637
    invoke-static {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getFaceManager()Landroid/hardware/face/FaceManager;
    .registers 3

    .line 694
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 695
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "face"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 687
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;
    .registers 2

    .line 582
    new-instance p0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public getJavaKeyStore()Ljava/security/KeyStore;
    .registers 3

    .line 714
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->androidKeystoreProviderName()Ljava/lang/String;

    move-result-object p0

    .line 713
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 715
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 716
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 715
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load keystore"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .registers 1

    .line 647
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public getManagedProfilePasswordCache(Ljava/security/KeyStore;)Lcom/android/server/locksettings/ManagedProfilePasswordCache;
    .registers 3

    .line 725
    new-instance v0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;-><init>(Ljava/security/KeyStore;Landroid/os/UserManager;)V

    return-object v0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    .line 614
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getPersonaService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/pm/PersonaManagerService;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "persona"

    .line 744
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 746
    :cond_13
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;
    .registers 4

    .line 669
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V

    return-object v0
.end method

.method public getRecoverableKeyStoreManager()Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .registers 1

    .line 651
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public getServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 575
    new-instance p0, Lcom/android/server/ServiceThread;

    const-string v0, "LockSettingsService"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 577
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-object p0
.end method

.method public getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
    .registers 3

    .line 586
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 587
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    return-object v0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 1

    const-string/jumbo p0, "mount"

    .line 655
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 657
    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .registers 2

    .line 602
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
    .registers 2

    .line 606
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .registers 5

    .line 663
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    new-instance v2, Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {v2}, Lcom/android/server/locksettings/PasswordSlotManager;-><init>()V

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 618
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 622
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public hasEnrolledBiometrics(I)Z
    .registers 3

    .line 673
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    .line 674
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricManager;->hasEnrolledBiometrics(I)Z

    move-result p0

    return p0
.end method

.method public isDualDAREnabled()Z
    .registers 1

    .line 736
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result p0

    return p0
.end method

.method public isGsiRunning()Z
    .registers 2

    const-string/jumbo p0, "ro.gsid.image_running"

    const/4 v0, 0x0

    .line 682
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    .line 703
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 5

    .line 708
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
