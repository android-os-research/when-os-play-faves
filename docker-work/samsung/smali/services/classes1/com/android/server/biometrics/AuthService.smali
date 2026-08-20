.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthService$AuthServiceImpl;,
        Lcom/android/server/biometrics/AuthService$Injector;
    }
.end annotation


# static fields
.field public static final DEFAULT_HIDL_DISABLED:I = 0x0

.field public static final SETTING_HIDL_DISABLED:Ljava/lang/String; = "com.android.server.biometrics.AuthService.hidlDisabled"

.field public static final SYSPROP_API_LEVEL:Ljava/lang/String; = "ro.board.api_level"

.field public static final SYSPROP_FIRST_API_LEVEL:Ljava/lang/String; = "ro.board.first_api_level"

.field public static final TAG:Ljava/lang/String; = "AuthService"


# instance fields
.field public mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field public final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAppOps(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthService;->checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPrivilegedPermission(Lcom/android/server/biometrics/AuthService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->checkPrivilegedPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetCredentialBackupModality(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->getCredentialBackupModality(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 625
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .registers 3

    .line 629
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 631
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 632
    new-instance p1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$AuthServiceImpl-IA;)V

    iput-object p1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static getCredentialBackupModality(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_6

    :cond_4
    and-int/lit8 p0, p0, -0x2

    :goto_6
    return p0
.end method


# virtual methods
.method public final checkAppOps(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 798
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x4e

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final checkInternalPermission()V
    .registers 3

    .line 785
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v1, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkPermission()V
    .registers 3

    .line 790
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 792
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC"

    const-string v1, "Must have USE_BIOMETRIC permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final checkPrivilegedPermission()V
    .registers 3

    .line 892
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    const-string v1, "Must have BIOMETRICS_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final generateRSdkCompatibleConfiguration()[Ljava/lang/String;
    .registers 9

    .line 693
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.hardware.fingerprint"

    .line 695
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1d

    .line 696
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    const-string v1, "android.hardware.biometrics.face"

    .line 698
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/16 p0, 0x8

    .line 699
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/16 p0, 0xfff

    .line 701
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 702
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 703
    :goto_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_61

    .line 704
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 705
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v3

    const/4 v5, 0x1

    aput-object v6, v7, v5

    aput-object p0, v7, v2

    const-string v5, ":"

    .line 706
    invoke-static {v5, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 708
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generated config_biometric_sensors: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AuthService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 14
    .param p2    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 864
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 866
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e009b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 868
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 871
    new-instance p0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 872
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v10}, Landroid/hardware/face/FaceSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZ)V

    return-object p0
.end method

.method public final getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 10
    .param p2    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 813
    new-instance p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 814
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v2

    .line 815
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semGetMaxTemplateNumber()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semGetSensorType()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZ)V

    return-object p0
.end method

.method public final getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 10
    .param p2    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 880
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 883
    new-instance p0, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 884
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->authenticatorStrengthToPropertyStrength(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    return-object p0
.end method

.method public onStart()V
    .registers 6

    .line 659
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 662
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "ro.board.first_api_level"

    const/4 v1, 0x0

    .line 663
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "ro.board.api_level"

    .line 664
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 665
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 666
    array-length v3, v2

    if-nez v3, :cond_3f

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_3f

    const-string v0, "AuthService"

    const-string v2, "Found R vendor partition without config_biometric_sensors"

    .line 670
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    move-result-object v2

    .line 673
    :cond_3f
    array-length v0, v2

    new-array v0, v0, [Lcom/android/server/biometrics/SensorConfig;

    .line 674
    :goto_42
    array-length v3, v2

    if-ge v1, v3, :cond_52

    .line 675
    new-instance v3, Lcom/android/server/biometrics/SensorConfig;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_51
    const/4 v0, 0x0

    .line 682
    :cond_52
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthService;->registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    return-void
.end method

.method public final registerAuthenticators([Lcom/android/server/biometrics/SensorConfig;)V
    .registers 11

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "AuthService"

    if-eqz p1, :cond_8c

    .line 727
    array-length v4, p1

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_8c

    aget-object v6, p1, v5

    .line 728
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering HIDL ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Strength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7e

    const/4 v8, 0x4

    if-eq v7, v8, :cond_72

    const/16 v8, 0x8

    if-eq v7, v8, :cond_66

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 737
    :cond_66
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v6, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {p0, v7, v6}, Lcom/android/server/biometrics/AuthService;->getHidlFaceSensorProps(II)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 741
    :cond_72
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v6, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    invoke-virtual {p0, v7, v6}, Lcom/android/server/biometrics/AuthService;->getHidlIrisSensorProps(II)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 732
    :cond_7e
    iget v7, v6, Lcom/android/server/biometrics/SensorConfig;->id:I

    iget v6, v6, Lcom/android/server/biometrics/SensorConfig;->strength:I

    .line 733
    invoke-virtual {p0, v7, v6}, Lcom/android/server/biometrics/AuthService;->getHidlFingerprintSensorProps(II)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v6

    .line 732
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 750
    :cond_8c
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 753
    :try_start_94
    invoke-interface {p1, v0}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_aa

    :catch_98
    move-exception p1

    const-string v0, "RemoteException when registering fingerprint authenticators"

    .line 755
    invoke-static {v3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    .line 757
    :cond_9f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_aa

    const-string p1, "HIDL fingerprint configuration exists, but FingerprintService is null."

    .line 758
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_aa
    :goto_aa
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object p1

    if-eqz p1, :cond_bd

    .line 764
    :try_start_b2
    invoke-interface {p1, v1}, Landroid/hardware/face/IFaceService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_c8

    :catch_b6
    move-exception p1

    const-string v0, "RemoteException when registering face authenticators"

    .line 766
    invoke-static {v3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 768
    :cond_bd
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c8

    const-string p1, "HIDL face configuration exists, but FaceService is null."

    .line 769
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_c8
    :goto_c8
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object p0

    if-eqz p0, :cond_db

    .line 775
    :try_start_d0
    invoke-interface {p0, v2}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_e6

    :catch_d4
    move-exception p0

    const-string p1, "RemoteException when registering iris authenticators"

    .line 777
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6

    .line 779
    :cond_db
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_e6

    const-string p0, "HIDL iris configuration exists, but IrisService is null."

    .line 780
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    :goto_e6
    return-void
.end method
