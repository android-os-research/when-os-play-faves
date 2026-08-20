.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FingerprintServiceWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public static synthetic $r8$lambda$9PUpjBKkdvsTiFpkjfr7bQcrwbA(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->lambda$dump$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$9ywjRDil4QaUZuzwB7EzO_VroH4(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->lambda$dump$3([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoKCvV1u1c3RI7bmHyDsGtrct-0(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->lambda$dump$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rntdfrepJs-1rXW3oVkRsNOMaGE(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->lambda$registerAuthenticators$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wvAdeTBqz6JvRdxsLgJKl4R_HWI(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->lambda$authenticateWithPrompt$0(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    return-void
.end method

.method public static synthetic lambda$authenticateWithPrompt$0(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/content/DialogInterface;I)V
    .registers 3

    const/16 p1, 0xa

    const/4 p2, 0x0

    .line 439
    :try_start_3
    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string p1, "FingerprintService"

    const-string p2, "Remote exception in negative button onClick()"

    .line 442
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method private synthetic lambda$dump$1(Z)V
    .registers 3

    .line 750
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-eqz p0, :cond_12

    .line 752
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semSetTpaHalEnabled(Z)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$dump$2()V
    .registers 2

    .line 759
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-eqz p0, :cond_12

    .line 761
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semUpdateTpaAction()V

    :cond_12
    return-void
.end method

.method private synthetic lambda$dump$3([Ljava/lang/String;)V
    .registers 5

    .line 767
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    if-eqz p0, :cond_1f

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 770
    aget-object v1, p1, v1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 771
    aget-object p1, p1, v1

    aput-object p1, v2, v0

    .line 772
    invoke-interface {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semSetTpaRequestCommandAction([Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$registerAuthenticators$4(Ljava/util/List;)V
    .registers 8

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->addAidlProviders()V

    .line 1106
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->isExistAidlProvider()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->addHidlProviders(Ljava/util/List;)V

    :cond_c
    const-string p1, "biometric"

    .line 1116
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1115
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p1

    .line 1119
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1121
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v1

    .line 1122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1123
    iget v3, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1124
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    .line 1125
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v2

    .line 1126
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;I)V

    const/4 v5, 0x2

    .line 1129
    :try_start_54
    invoke-interface {p1, v3, v5, v2, v4}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_34

    :catch_58
    const-string v2, "FingerprintService"

    .line 1132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception when registering sensorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1137
    :cond_6f
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1138
    :try_start_76
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1139
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_80

    .line 1141
    :cond_9a
    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_76 .. :try_end_9b} :catchall_a7

    .line 1143
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mbroadcastCurrentEnrollmentState(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 1144
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mbroadcastAllAuthenticatorsRegistered(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    return-void

    :catchall_a7
    move-exception p0

    .line 1141
    :try_start_a8
    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p0
.end method


# virtual methods
.method public final addAidlProviders()V
    .registers 15

    .line 1058
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 1059
    array-length v1, v0

    if-nez v1, :cond_d

    goto/16 :goto_a5

    .line 1062
    :cond_d
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_a5

    aget-object v7, v0, v2

    .line 1063
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1065
    invoke-static {v11}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    .line 1064
    invoke-static {v3}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v3

    const-string v12, "FingerprintService"

    if-nez v3, :cond_4e

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get declared service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 1071
    :cond_4e
    :try_start_4e
    invoke-interface {v3}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object v6

    .line 1072
    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1073
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v8

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v9

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1076
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v10

    move-object v3, v13

    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 1077
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->addProvider(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_8c} :catch_8d

    goto :goto_a1

    .line 1082
    :catch_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in getSensorProps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_a5
    :goto_a5
    return-void
.end method

.method public addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V
    .registers 4

    .line 1162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p1, :cond_15

    const-string p0, "FingerprintService"

    const-string p1, "addAuthenticatorsRegisteredCallback, callback is null"

    .line 1164
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1170
    :cond_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1171
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmAuthenticatorsRegisteredCallbacks(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p1

    .line 1172
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmSensorProps(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 1173
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_4a

    if-eqz p1, :cond_40

    if-eqz v1, :cond_40

    .line 1175
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mbroadcastAllAuthenticatorsRegistered(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    goto :goto_49

    :cond_40
    if-nez p1, :cond_49

    const-string p0, "FingerprintService"

    const-string p1, "addAuthenticatorsRegisteredCallback failed to register callback"

    .line 1177
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void

    :catchall_4a
    move-exception p0

    .line 1173
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4

    .line 1010
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1011
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->registerCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    return-void
.end method

.method public final addHidlProviders(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 1022
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "FingerprintService"

    const-string v1, "addHidlProviders: start"

    .line 1023
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1028
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_24

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_72

    :cond_24
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1029
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1030
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v4, "com.android.server.biometrics.sensors.fingerprint.test_udfps.enable"

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_72

    .line 1033
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1036
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v6

    .line 1033
    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    move-result-object v0

    goto :goto_bb

    .line 1039
    :cond_72
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    if-eqz v0, :cond_99

    .line 1040
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    move-result-object v0

    goto :goto_bb

    .line 1044
    :cond_99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    move-result-object v0

    .line 1050
    :goto_bb
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->addProvider(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    goto/16 :goto_f

    :cond_cf
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .registers 5

    .line 729
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLockoutResetCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v10, p7

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] from pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "FingerprintService"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 349
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v6, 0x1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move v7, v12

    move v9, v13

    invoke-static/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v3

    const-wide/16 v14, -0x1

    if-nez v3, :cond_58

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authenticate rejecting package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v14

    .line 362
    :cond_58
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_6e

    .line 365
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v2

    :cond_6e
    move v5, v2

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v16, :cond_97

    .line 372
    :try_start_75
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    if-eqz v4, :cond_97

    const v0, 0x534e4554

    const-string v1, "79776455"

    .line 375
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v0, "Authenticate invoked when user is encrypted or lockdown"

    .line 376
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_75 .. :try_end_8e} :catchall_92

    .line 380
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v14

    :catchall_92
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    throw v0

    .line 380
    :cond_97
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_ab

    move v9, v3

    goto :goto_ad

    :cond_ab
    const/4 v2, 0x0

    move v9, v2

    :goto_ad
    if-eqz v16, :cond_b2

    move/from16 v17, v3

    goto :goto_b5

    :cond_b2
    const/4 v2, 0x3

    move/from16 v17, v2

    :goto_b5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_bf

    .line 390
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v2

    goto :goto_d9

    .line 392
    :cond_bf
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    new-instance v2, Landroid/util/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d9
    if-nez v2, :cond_e1

    const-string v0, "Null provider for authenticate"

    .line 396
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v14

    .line 400
    :cond_e1
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 401
    invoke-interface {v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v4

    if-nez v16, :cond_118

    .line 402
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_118

    if-eqz v4, :cond_118

    .line 403
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v1

    if-eqz v1, :cond_118

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move v5, v12

    move v6, v13

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 405
    :try_start_10b
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_10f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_10f} :catch_110

    return-wide v0

    :catch_110
    move-exception v0

    move-object v1, v0

    const-string v0, "Invalid package"

    .line 408
    invoke-static {v11, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v14

    .line 412
    :cond_118
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v2, p6

    invoke-direct {v7, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v8, p7

    move/from16 v10, v17

    move/from16 v11, v16

    invoke-interface/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Z)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    .line 428
    invoke-static {p4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    const/4 v1, 0x0

    .line 427
    invoke-virtual {v0, p7, v1, p4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p4

    .line 429
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 431
    new-instance p7, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p7, p4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x1040250

    .line 432
    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p7, p4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    const p7, 0x1040531

    .line 433
    invoke-virtual {v0, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    const/high16 p7, 0x1040000

    .line 435
    invoke-virtual {v0, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p7

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 434
    invoke-virtual {p4, p7, v3, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    iget p7, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 445
    invoke-virtual {p4, p7}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    .line 446
    invoke-virtual {p4, p8}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p4

    .line 447
    invoke-virtual {p4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    .line 449
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    invoke-direct {v4, p0, p6, p3, p5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V

    .line 499
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateForOperation(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14

    .line 593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 595
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const-string v0, "FingerprintService"

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmAuthenticationSyncLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 601
    :try_start_29
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p3

    if-nez p3, :cond_4c

    const-string p0, "FingerprintService"

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cancelAuthentication rejecting package: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    monitor-exit v7

    return-void

    .line 612
    :cond_4c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_5d

    const-string p0, "FingerprintService"

    const-string p1, "Null provider for cancelAuthentication"

    .line 614
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v7

    return-void

    .line 618
    :cond_5d
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    .line 619
    monitor-exit v7

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_29 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 650
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {p3, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 652
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelAuthenticationFromService, sensorId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FingerprintService"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_2f

    const-string p0, "Null provider for cancelAuthenticationFromService"

    .line 656
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_2f
    invoke-interface {p0, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelEnrollment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_2f

    const-string p0, "Null provider for cancelEnrollment"

    .line 318
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_2f
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelEnrollment(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 625
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFingerprintDetect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 630
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cancelFingerprintDetect called from non-sysui package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 637
    :cond_4a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_58

    const-string p0, "Null provider for cancelFingerprintDetect"

    .line 639
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_58
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 6

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Null provider for createTestSession, sensorId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_2b
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public detectFingerprint(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)J
    .registers 13

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectFingerprint: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] from pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, -0x1

    if-nez v0, :cond_4c

    .line 511
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detectFingerprint called from non-sysui package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 515
    :cond_4c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string p0, "detectFingerprint invoked when user is not encrypted or lockdown"

    .line 518
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 522
    :cond_5e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_6c

    const-string p0, "Null provider for detectFingerprint"

    .line 524
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 528
    :cond_6c
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, p3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    const/4 v7, 0x1

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 738
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 742
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 745
    :try_start_13
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1d

    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v2, :cond_aa

    .line 746
    :cond_1d
    array-length v2, p3

    const/4 v5, 0x2

    if-le v2, v5, :cond_aa

    const-string v2, "--tpa"

    aget-object v6, p3, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string/jumbo p1, "mode"

    .line 747
    aget-object v2, p3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    const-string p1, "1"

    .line 748
    aget-object p3, p3, v5

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 749
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Z)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 755
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "tpa mode: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a6

    :cond_64
    const-string/jumbo p1, "update"

    .line 757
    aget-object v2, p3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 758
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo p0, "tpa mode: update action"

    .line 764
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a6

    :cond_86
    const-string p1, "command"

    .line 765
    aget-object v2, p3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 766
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;[Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo p0, "tpa mode: setTpaRequestCommands"

    .line 775
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_13 .. :try_end_a6} :catchall_1ba

    .line 814
    :cond_a6
    :goto_a6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 781
    :cond_aa
    :try_start_aa
    array-length v2, p3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_1ba

    const-string v5, "--proto"

    if-le v2, v4, :cond_fb

    :try_start_af
    aget-object v2, p3, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string v2, "--state"

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 782
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 783
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 785
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 786
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {p1, v2, p2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    goto :goto_e4

    .line 789
    :cond_f6
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_1b6

    .line 790
    :cond_fb
    array-length v2, p3

    if-lez v2, :cond_136

    aget-object p3, p3, v3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_136

    .line 791
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_110
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 793
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_124
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_110

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 794
    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {p2, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoMetrics(ILjava/io/FileDescriptor;)V

    goto :goto_124

    .line 798
    :cond_136
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_140
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 800
    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_154
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dumping for sensorId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 801
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fps state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v5

    .line 804
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->getBiometricState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 803
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {p3, v3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 806
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_154

    .line 810
    :cond_1ad
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->dump(Ljava/io/PrintWriter;)V
    :try_end_1b6
    .catchall {:try_start_af .. :try_end_1b6} :catchall_1ba

    .line 814
    :cond_1b6
    :goto_1b6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1ba
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    throw p0
.end method

.method public dumpSensorServiceStateProto(IZ)[B
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 206
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 208
    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 210
    :cond_1b
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 211
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
    .registers 16

    .line 280
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "FingerprintService"

    const-wide/16 v2, -0x1

    if-nez v0, :cond_1d

    const-string p0, "Null provider for enroll"

    .line 284
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 289
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enroll: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] from pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p2, :cond_8e

    .line 290
    array-length v4, p2

    if-nez v4, :cond_40

    goto :goto_8e

    .line 294
    :cond_40
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v4

    .line 295
    invoke-virtual {v4, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->canUseFingerprint(ZZ)Landroid/util/Pair;

    move-result-object v1

    .line 296
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 298
    :try_start_54
    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p4, p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p0

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_6c
    return-wide v2

    .line 304
    :cond_6d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v5

    .line 306
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0

    .line 291
    :cond_8e
    :goto_8e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 p1, 0x5

    invoke-static {p0, p4, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$msemSendErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    return-wide v2
.end method

.method public generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 242
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_33

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateChallenge: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_33
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v2

    if-nez v2, :cond_50

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching sensor for generateChallenge, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    move v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    .line 254
    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 6

    .line 968
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 970
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_2d

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthenticatorId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_2d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p2

    .line 975
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_47

    const-string p0, "Null provider for getAuthenticatorId"

    .line 977
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    .line 980
    :cond_47
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 881
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 882
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 876
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p3

    if-nez p3, :cond_1c

    .line 883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 886
    :cond_1c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    if-eq p1, p3, :cond_2d

    .line 887
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {p3, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 890
    :cond_2d
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p1

    .line 892
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutModeForUser(II)I
    .registers 6

    .line 934
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 936
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_2d

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockoutModeForUser: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_3c

    const-string p0, "Null provider for getLockoutModeForUser"

    .line 942
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 945
    :cond_3c
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_33

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching sensor for getSensorProperties, sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_33
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_19

    .line 219
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.TEST_BIOMETRIC"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    :cond_19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledFingerprints(IILjava/lang/String;)Z
    .registers 6

    .line 919
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 923
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for hasEnrolledFingerprints, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 927
    :cond_2b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    .line 929
    invoke-interface {v0, p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1
.end method

.method public hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 898
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 904
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 898
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p3

    if-nez p3, :cond_19

    const/4 p0, 0x0

    return p0

    .line 908
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    if-eq p1, p3, :cond_2a

    .line 909
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {p3, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 912
    :cond_2a
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p1

    .line 914
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 915
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 7

    .line 951
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 953
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_2e

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalidateAuthenticatorId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_2e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p2

    .line 958
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_46

    const-string p0, "Null provider for invalidateAuthenticatorId"

    .line 960
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 963
    :cond_46
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isClientActive()Z
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1005
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->isAnySensorActive()Z

    move-result p0

    return p0
.end method

.method public final isExistAidlProvider()Z
    .registers 2

    .line 1150
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1151
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isHardwareDetected(ILjava/lang/String;)Z
    .registers 5

    .line 846
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 848
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 850
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for isHardwareDetected, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 854
    :cond_2b
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->isHardwareDetected(I)Z

    move-result p0

    return p0
.end method

.method public isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 820
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 825
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 826
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 820
    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_19

    return v0

    .line 830
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 832
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_3f

    const-string p0, "FingerprintService"

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null provider for isHardwareDetectedDeprecated, caller: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_53

    .line 840
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 838
    :cond_3f
    :try_start_3f
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->isHardwareDetected(I)Z

    move-result p0
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_53

    .line 840
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_53
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    throw p0
.end method

.method public onPointerDown(JIIIFF)V
    .registers 16

    .line 1184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1186
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for onFingerDown, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 1191
    invoke-interface/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerDown(JIIIFF)V

    return-void
.end method

.method public onPointerUp(JI)V
    .registers 6

    .line 1196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1198
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_2a

    .line 1200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for onFingerUp, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1203
    :cond_2a
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onPointerUp(JI)V

    return-void
.end method

.method public onUiReady(JI)V
    .registers 6

    .line 1208
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1210
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_2a

    .line 1212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching provider for onUiReady, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1215
    :cond_2a
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onUiReady(JI)V

    return-void
.end method

.method public prepareForAuthentication(ILandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 26

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p6

    move/from16 v6, p10

    .line 538
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v4, "FingerprintService"

    if-eqz v3, :cond_21

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareForAuthentication: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_21
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v5, p5

    invoke-static {v3, v5}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v5

    .line 543
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 544
    invoke-virtual {v3, v7, v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->canUseFingerprint(ZZ)Landroid/util/Pair;

    move-result-object v3

    .line 545
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_5c

    .line 547
    :try_start_43
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v6, v0, v3}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onError(IIII)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    .line 549
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5b
    return-void

    .line 555
    :cond_5c
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v3, v7}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_75

    const-string v0, "Null provider for prepareForAuthentication"

    .line 559
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 564
    :cond_75
    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v7, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    const/4 v11, 0x1

    const/4 v12, 0x2

    move v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p10

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v13, p11

    invoke-interface/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    return-void
.end method

.method public registerAuthenticators(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1102
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1103
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .registers 2

    .line 1252
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 666
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_38

    const-string p0, "Null provider for remove"

    .line 674
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 677
    :cond_38
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V

    return-void
.end method

.method public removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 717
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 718
    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v1

    .line 719
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 720
    iget v3, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v2, p3

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    goto :goto_4d

    :cond_64
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4

    .line 1016
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1017
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->removeCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .registers 6

    .line 859
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 864
    :cond_18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_28

    const-string p0, "FingerprintService"

    const-string p1, "Null provider for rename"

    .line 866
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 870
    :cond_28
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->rename(IIILjava/lang/String;)V

    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .registers 8

    .line 986
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 988
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v0, "FingerprintService"

    if-eqz p1, :cond_34

    .line 989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetLockout: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_34
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p1

    .line 993
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_5b

    .line 995
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for resetLockout, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 999
    :cond_5b
    invoke-interface {p0, p2, p1, p4}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleResetLockout(II[B)V

    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .registers 16

    .line 260
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_34

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revokeChallenge: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v2

    if-nez v2, :cond_51

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching sensor for revokeChallenge, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    move v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    move-wide v7, p5

    .line 272
    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method public semAddMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5

    .line 1473
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1474
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->addMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public semAuthenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)J
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v11, p8

    .line 1263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1264
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1265
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const-string v4, "FingerprintService"

    .line 1267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semAuthenticate: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] from pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmAuthenticationSyncLock(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    if-nez p10, :cond_45

    .line 1270
    :try_start_3e
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v12, v4

    goto :goto_47

    :cond_45
    move-object/from16 v12, p10

    .line 1273
    :goto_47
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->applyAndClearIFAAFlag(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1276
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/4 v7, 0x1

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-static/range {v4 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z

    move-result v4

    const/4 v5, 0x5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    if-nez v4, :cond_7e

    const-string v1, "FingerprintService"

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authenticate rejecting package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, v3, v5, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$msemSendErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    .line 1285
    monitor-exit v13

    return-wide v6

    .line 1290
    :cond_7e
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 1293
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v9}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v2

    :cond_94
    move v9, v2

    .line 1297
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14
    :try_end_99
    .catchall {:try_start_3e .. :try_end_99} :catchall_1ca

    if-eqz v4, :cond_cb

    .line 1299
    :try_start_9b
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_cb

    const/16 v2, 0x1000

    move/from16 v10, p7

    if-eq v10, v2, :cond_cb

    const v1, 0x534e4554

    const-string v2, "79776455"

    .line 1303
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v1, "FingerprintService"

    const-string v2, "Authenticate invoked when user is encrypted or lockdown"

    .line 1304
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, v3, v5, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$msemSendErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    :try_end_c1
    .catchall {:try_start_9b .. :try_end_c1} :catchall_c6

    .line 1310
    :try_start_c1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    return-wide v6

    :catchall_c6
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    throw v0

    .line 1310
    :cond_cb
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1313
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v2

    const/4 v10, 0x1

    .line 1314
    invoke-virtual {v2, v10, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->canUseFingerprint(ZZ)Landroid/util/Pair;

    move-result-object v2

    .line 1315
    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_e1
    .catchall {:try_start_c1 .. :try_end_e1} :catchall_1ca

    if-eqz v14, :cond_fd

    .line 1317
    :try_start_e3
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_f6
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_f6} :catch_f7
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_1ca

    goto :goto_fb

    :catch_f7
    move-exception v0

    .line 1319
    :try_start_f8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1321
    :goto_fb
    monitor-exit v13

    return-wide v6

    .line 1325
    :cond_fd
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v14, "com.samsung.android.permission.FINGERPRINT_PRIVILEGED"

    invoke-static {v2, v14}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_129

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v14, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v2, v14}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_129

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 1327
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v14, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-static {v2, v14}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_129

    move v14, v10

    goto :goto_12a

    :cond_129
    move v14, v8

    :goto_12a
    if-eqz v14, :cond_134

    const-string/jumbo v2, "sem_privileged_attr"

    .line 1329
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v2, v8

    goto :goto_139

    :cond_134
    const/4 v2, 0x4

    .line 1332
    invoke-static {v12, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semHasPrivilegedFlag(Landroid/os/Bundle;I)Z

    move-result v2

    :goto_139
    if-eqz v4, :cond_13d

    move v15, v10

    goto :goto_13e

    :cond_13d
    const/4 v15, 0x3

    :goto_13e
    const/4 v10, -0x1

    if-ne v1, v10, :cond_148

    .line 1340
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_163

    .line 1342
    :cond_148
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v10}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v6, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v10, v6}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1343
    new-instance v6, Landroid/util/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v10, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v6

    :goto_163
    if-nez v1, :cond_175

    const-string v1, "FingerprintService"

    const-string v2, "Null provider for authenticate"

    .line 1346
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0, v3, v5, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$msemSendErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    .line 1348
    monitor-exit v13

    const-wide/16 v1, -0x1

    return-wide v1

    .line 1350
    :cond_175
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, v9}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_19d

    const-string v1, "FingerprintService"

    const-string v2, "No enrolled fingerprint"

    .line 1351
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    const/16 v1, 0xb

    invoke-static {v0, v3, v1, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$msemSendErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    .line 1353
    monitor-exit v13

    const-wide/16 v1, -0x1

    return-wide v1

    .line 1355
    :cond_19d
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v7, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    if-nez v4, :cond_1b7

    if-eqz v2, :cond_1b4

    goto :goto_1b7

    :cond_1b4
    move/from16 v16, v8

    goto :goto_1b9

    :cond_1b7
    :goto_1b7
    const/16 v16, 0x1

    :goto_1b9
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move v5, v9

    move-object/from16 v8, p8

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-interface/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semScheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZLandroid/os/Bundle;)J

    move-result-wide v0

    monitor-exit v13

    return-wide v0

    :catchall_1ca
    move-exception v0

    .line 1359
    monitor-exit v13
    :try_end_1cc
    .catchall {:try_start_f8 .. :try_end_1cc} :catchall_1ca

    throw v0
.end method

.method public semBioSysUiRequest(IIJLjava/lang/String;)I
    .registers 12

    .line 1533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1536
    :cond_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysUiRequest(IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public semForceCBGE()V
    .registers 3

    .line 1377
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1378
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->forceCBGE()V

    return-void
.end method

.method public semGetDaemonVersion()Ljava/lang/String;
    .registers 3

    .line 1438
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1439
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getDaemonVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetIconBottomMargin()I
    .registers 1

    .line 1503
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getSensorAreaMarginFromBottomForFod()I

    move-result p0

    return p0
.end method

.method public semGetInDisplaySensorInfo(Landroid/os/Bundle;)V
    .registers 3

    .line 1557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_f

    .line 1558
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_f
    return-void
.end method

.method public semGetMaxEnrollmentNumber()I
    .registers 1

    .line 1366
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semGetMaxTemplateNumber()I

    move-result p0

    return p0
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 4

    .line 1585
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p1

    .line 1587
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public semGetSecurityLevel()I
    .registers 3

    .line 1514
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1515
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getSecurityLevel()I

    move-result p0

    return p0
.end method

.method public semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 4

    .line 1498
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getUdfpsSensorArea(IILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public semGetSensorInfo()Ljava/lang/String;
    .registers 3

    .line 1426
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1427
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getSensorInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetSensorStatus()I
    .registers 1

    .line 1403
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getSensorStatus()I

    move-result p0

    return p0
.end method

.method public semGetSensorTestResult([B)I
    .registers 4

    .line 1451
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1452
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getSensorTestResult([B)I

    move-result p0

    return p0
.end method

.method public semGetTrustAppVersion()Ljava/lang/String;
    .registers 3

    .line 1520
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1521
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getTrustAppVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetUserIdList()[Ljava/lang/String;
    .registers 3

    .line 1432
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1433
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getUserIdList()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semHasFeature(I)Z
    .registers 2

    .line 1372
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->hasFeature(I)Z

    move-result p0

    return p0
.end method

.method public semIsEnrollSession()Z
    .registers 3

    .line 1390
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1391
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->isEnrollSession()Z

    move-result p0

    return p0
.end method

.method public semIsTemplateDbCorrupted()Z
    .registers 3

    .line 1396
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1397
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->isTemplateDbCorrupted()Z

    move-result p0

    return p0
.end method

.method public semMoveSensorIconInDisplay(II)V
    .registers 3

    .line 1508
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1509
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->moveSensorIconInDisplay()V

    return-void
.end method

.method public semOpenSession()Z
    .registers 3

    .line 1420
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1421
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->openTrustAppSession()Z

    move-result p0

    return p0
.end method

.method public semPauseEnroll()Z
    .registers 3

    .line 1408
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1409
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->pauseEnroll()Z

    move-result p0

    return p0
.end method

.method public semProcessFido(I[B[BLjava/lang/String;)I
    .registers 7

    .line 1571
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1572
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.permission.REQUEST_PROCESS_FIDO"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1574
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process FIDO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "FingerprintService"

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1577
    :try_start_3a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->requestProcessFIDO(I[B[B)I

    move-result p0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_48

    .line 1579
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_48
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1580
    throw p0
.end method

.method public semRegisterAodController(Landroid/os/IBinder;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .registers 4

    .line 1486
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1487
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->registerAodController(Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    return-void
.end method

.method public semRegisterDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I
    .registers 4

    .line 1541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1544
    :cond_a
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->registerDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I

    move-result p0

    return p0
.end method

.method public semRemoveMaskView(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 5

    .line 1479
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1480
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public semRequest(Landroid/os/IBinder;I[B[BIILjava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I
    .registers 21

    move-object v0, p0

    .line 1601
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p6

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v8

    .line 1602
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v2

    .line 1603
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    .line 1602
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->startRequest(Landroid/os/IBinder;I[B[BIILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public semResumeEnroll()Z
    .registers 3

    .line 1414
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1415
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->resumeEnroll()Z

    move-result p0

    return p0
.end method

.method public semRunSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I
    .registers 7

    .line 1445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1446
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->runSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result p0

    return p0
.end method

.method public semSetCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 6

    .line 1384
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1385
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->setCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public semSetFlagForIFAA(ILjava/lang/String;)V
    .registers 5

    .line 1592
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1593
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->setFlagForIFAA(ILjava/lang/String;)V

    return-void
.end method

.method public semSetFodStrictMode(Z)V
    .registers 4

    .line 1564
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1565
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->setFodStrictMode(Z)V

    return-void
.end method

.method public semSetScreenStatus(I)I
    .registers 4

    .line 1459
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1460
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    move p1, v0

    :goto_17
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->setScreenStatusFromKeyguard(Z)V

    return v0
.end method

.method public semShowBouncerScreen(I)I
    .registers 4

    .line 1466
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1467
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->setBouncerScreen(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public semUnregisterAodController(Landroid/os/IBinder;)V
    .registers 3

    .line 1492
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1493
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodController()V

    return-void
.end method

.method public semUnregisterDisplayStateCallback()V
    .registers 3

    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    .line 1552
    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterDisplayStateCallback()V

    return-void
.end method

.method public semUpdateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V
    .registers 6

    .line 1527
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1528
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$fgetmServiceExtImpl(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->updateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V

    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 3

    .line 1236
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1238
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_2a

    .line 1239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSidefpsController: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 3

    .line 1220
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1222
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_2a

    .line 1223
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setUdfpsOverlayController: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 6

    .line 572
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_26

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreparedClient: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_26
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_34

    const-string p0, "Null provider for startPreparedClient"

    .line 580
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 584
    :cond_34
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->startPreparedClient(II)V

    return-void
.end method
