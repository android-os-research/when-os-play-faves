.class public final Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;
.super Landroid/hardware/face/IFaceService$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FaceServiceWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public static synthetic $r8$lambda$9eJv3vEjG0jVWZcFPBvQ4WWRFlQ(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->lambda$registerAuthenticators$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jRw5IpMk12nSTERYNpJX7e1OTD0(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->lambda$dump$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzz9lOk-8FSZLCS8RKaLVgOnf5k(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->lambda$dump$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    return-void
.end method

.method private synthetic lambda$dump$0(Z)V
    .registers 3

    .line 650
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    if-eqz p0, :cond_12

    .line 652
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semSetTpaHalEnabled(Z)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$dump$1()V
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    if-eqz p0, :cond_12

    .line 661
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semUpdateTpaAction()V

    :cond_12
    return-void
.end method

.method private synthetic lambda$registerAuthenticators$2(Ljava/util/List;)V
    .registers 9

    .line 1007
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fputmAidlEnabled(Lcom/android/server/biometrics/sensors/face/FaceService;Z)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->addAidlProviders()V

    .line 1009
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmAidlEnabled(Lcom/android/server/biometrics/sensors/face/FaceService;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->addHidlProviders(Ljava/util/List;)V

    .line 1012
    :cond_14
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmAidlEnabled(Lcom/android/server/biometrics/sensors/face/FaceService;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "AIDL"

    goto :goto_21

    :cond_1f
    const-string p1, "HIDL"

    :goto_21
    const-string v0, "FaceService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "biometric"

    .line 1019
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1018
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p1

    .line 1022
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 1023
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    .line 1024
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 1025
    iget v4, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 1026
    iget v3, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    .line 1027
    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v3

    .line 1028
    new-instance v5, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;-><init>(Landroid/hardware/face/IFaceService;I)V

    const/16 v6, 0x8

    .line 1031
    :try_start_6f
    invoke-interface {p1, v4, v6, v3, v5}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_4e

    .line 1034
    :catch_73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception when registering sensorId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_88
    return-void
.end method


# virtual methods
.method public final addAidlProviders()V
    .registers 15

    .line 951
    sget-object v0, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    if-eqz v0, :cond_10c

    .line 952
    array-length v2, v0

    if-nez v2, :cond_f

    goto/16 :goto_10c

    .line 956
    :cond_f
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_10b

    aget-object v8, v0, v4

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 959
    invoke-static {v11}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v5

    .line 958
    invoke-static {v5}, Landroid/hardware/biometrics/face/IFace$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;

    move-result-object v5

    if-nez v5, :cond_50

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get declared service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    .line 965
    :cond_50
    :try_start_50
    invoke-interface {v5}, Landroid/hardware/biometrics/face/IFace;->getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v12

    .line 966
    new-instance v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v9

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 967
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v10

    move-object v5, v13

    move-object v7, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 968
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fputmAidlEnabled(Lcom/android/server/biometrics/sensors/face/FaceService;Z)V

    .line 971
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSensorProps FINISH props:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    array-length v5, v12

    move v6, v3

    :goto_98
    if-ge v6, v5, :cond_da

    aget-object v7, v12, v6

    .line 973
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sensorType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v9, v7, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", sensor id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v9, v9, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", Strength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget-byte v7, v7, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    sget-boolean v7, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v7, :cond_cb

    const-string v7, " (Strong=2,1,0)"

    goto :goto_cd

    :cond_cb
    const-string v7, ""

    :goto_cd
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 973
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 976
    :cond_da
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v5, :cond_107

    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAidlProviders : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_f2} :catch_f3

    goto :goto_107

    .line 981
    :catch_f3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception in getSensorProps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    :goto_107
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_10b
    return-void

    :cond_10c
    :goto_10c
    const-string p0, "addAidlProviders no instance"

    .line 953
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addHidlProviders(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 944
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 945
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 946
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->newInstance(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    move-result-object v0

    .line 945
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2a
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .registers 6

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLockoutResetCallback called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_27
    const-string v1, ""

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 627
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->addCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J
    .registers 23

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p6

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticate called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v4, :cond_49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4f

    :cond_49
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    const-string v3, ""

    :goto_4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    .line 353
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 364
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 370
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 372
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_84

    const-string v0, "Null provider for authenticate"

    .line 374
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 379
    :cond_84
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v9

    .line 382
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v12, 0x0

    new-instance v13, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v2, p5

    invoke-direct {v13, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v14, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move v5, v9

    move v6, v12

    move-object v7, v13

    move-object/from16 v8, p6

    move v9, v14

    move/from16 v12, p7

    invoke-interface/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthentication called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2f

    :cond_2d
    const-string p2, ""

    :goto_2f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceService"

    .line 480
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 487
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_4e

    const-string p0, "Null provider for cancelAuthentication"

    .line 489
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_4e
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 9

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthenticationFromService called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_42

    :cond_40
    const-string p3, ""

    :goto_42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FaceService"

    .line 528
    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p3}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 535
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_61

    const-string p0, "Null provider for cancelAuthenticationFromService"

    .line 537
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 541
    :cond_61
    invoke-interface {p0, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;J)V
    .registers 7

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelEnrollment called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_27
    const-string v1, ""

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_4e

    const-string p0, "Null provider for cancelEnrollment"

    .line 340
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_4e
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelEnrollment(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 8

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFaceDetectcalled from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    const-string v1, ""

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 501
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cancelFaceDetect called from non-sysui package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_61
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_6f

    const-string p0, "Null provider for cancelFaceDetect"

    .line 516
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 520
    :cond_6f
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1, p3, p4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->cancelFaceDetect(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 7

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTestSession from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_34
    const-string v1, ""

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 159
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_6b

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Null provider for createTestSession, sensorId: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_6b
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J
    .registers 13

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectFace called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_34
    const-string v1, ""

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 393
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v2, -0x1

    if-nez v0, :cond_6a

    .line 401
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detectFace called from non-sysui package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 405
    :cond_6a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/biometrics/sensors/face/FaceService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string p0, "detectFace invoked when user is not encrypted or lockdown"

    .line 408
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 412
    :cond_7c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_8a

    const-string p0, "Null provider for detectFace"

    .line 414
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 418
    :cond_8a
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, p3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v7, 0x1

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    const-string v0, "FaceService"

    const-string v1, "dump: "

    .line 634
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 641
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 645
    :try_start_18
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_22

    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v2, :cond_8e

    .line 646
    :cond_22
    array-length v2, p3

    const/4 v5, 0x2

    if-lt v2, v5, :cond_8e

    const-string v2, "--tpa"

    aget-object v6, p3, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const-string/jumbo p1, "mode"

    .line 647
    aget-object v2, p3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    const-string p1, "1"

    .line 648
    aget-object p3, p3, v5

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 649
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Z)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "tpa mode: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8a

    :cond_69
    const-string/jumbo p1, "update"

    .line 657
    aget-object p3, p3, v4

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 658
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo p0, "tpa mode: update action"

    .line 664
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_18 .. :try_end_8a} :catchall_1bf

    .line 703
    :cond_8a
    :goto_8a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 671
    :cond_8e
    :try_start_8e
    array-length v2, p3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_1bf

    const-string v5, "--proto"

    if-le v2, v4, :cond_df

    :try_start_93
    aget-object v2, p3, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string v2, "--state"

    aget-object v6, p3, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 672
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 673
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_da

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 674
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 675
    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {p1, v2, p2, v3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    goto :goto_c8

    .line 678
    :cond_da
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_1bb

    .line 679
    :cond_df
    array-length v2, p3

    if-lez v2, :cond_11a

    aget-object v2, p3, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 680
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 681
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_108
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 682
    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {p2, v2, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpProtoMetrics(ILjava/io/FileDescriptor;)V

    goto :goto_108

    .line 685
    :cond_11a
    array-length v2, p3

    if-le v2, v4, :cond_162

    const-string v2, "--hal"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 686
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_131
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 687
    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_145
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_131

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 688
    iget v3, v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    array-length v5, p3

    .line 689
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {p3, v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 688
    invoke-interface {p2, v3, p1, v5}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_145

    .line 693
    :cond_162
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 694
    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_180
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dumping for sensorId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-interface {p1, v2, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 698
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1ba
    .catchall {:try_start_93 .. :try_end_1ba} :catchall_1bf

    goto :goto_180

    .line 703
    :cond_1bb
    :goto_1bb
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1bf
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    throw p0
.end method

.method public dumpSensorServiceStateProto(IZ)[B
    .registers 5

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpSensorServiceStateProto called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 188
    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    .line 190
    :cond_45
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 191
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .registers 24

    move-object v0, p0

    move/from16 v1, p1

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enroll from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    :cond_41
    move-object/from16 v7, p2

    move-object/from16 v4, p5

    const-string v3, ""

    :goto_47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    .line 295
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v2, v5}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_6e

    const-string v0, "Null provider for enroll"

    .line 303
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 308
    :cond_6e
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v9

    .line 311
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    invoke-interface/range {v5 .. v14}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J
    .registers 7

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enrollRemotelycalled from pid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_34

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    :cond_34
    const-string p1, ""

    :goto_36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateChallenge called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    const-string v1, ""

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 238
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v2

    if-nez v2, :cond_72

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching sensor for generateChallenge, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v4

    move v3, p2

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    .line 254
    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthenticatorId called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_44

    const-string p0, "Null provider for getAuthenticatorId"

    .line 856
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    .line 861
    :cond_44
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    .line 864
    invoke-interface {v0, p1, p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getAuthenticatorId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 740
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_16

    .line 741
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 745
    :cond_16
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p2

    .line 748
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    const-string v0, "FaceService"

    if-nez p0, :cond_43

    .line 750
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for getEnrolledFaces, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 755
    :cond_43
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p0

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnrolledFaces called from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_83

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_85

    :cond_83
    const-string p1, ""

    :goto_85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 756
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeature called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    const-string v1, ""

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 923
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_5e

    const-string p0, "Null provider for getFeature"

    .line 931
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 936
    :cond_5e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v4

    .line 939
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v6, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    move-object v3, p1

    move v5, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method

.method public getLockoutModeForUser(II)I
    .registers 5

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLockoutModeForUser called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_43

    const-string p0, "Null provider for getLockoutModeForUser"

    .line 809
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 814
    :cond_43
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    .line 817
    invoke-interface {v0, p1, p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getLockoutModeForUser(II)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 6

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSensorProperties called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_35
    const-string v1, ""

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_74

    .line 225
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

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_74
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSensorPropertiesInternal called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_28
    const-string p1, ""

    :goto_2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceService"

    .line 199
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 209
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSensorProperties(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledFaces(IILjava/lang/String;)Z
    .registers 6

    .line 768
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 773
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_16

    .line 774
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 778
    :cond_16
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p2

    .line 781
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_40

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for hasEnrolledFaces, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 788
    :cond_40
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p0

    .line 791
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    return v0
.end method

.method public invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidateAuthenticatorId called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 831
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v0

    if-nez v0, :cond_43

    const-string p0, "Null provider for invalidateAuthenticatorId"

    .line 833
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 838
    :cond_43
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    .line 841
    invoke-interface {v0, p1, p0, p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public isHardwareDetected(ILjava/lang/String;)Z
    .registers 6

    .line 713
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 720
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_2c

    const-string p0, "FaceService"

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for isHardwareDetected, caller: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_34

    const/4 p0, 0x0

    .line 727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 725
    :cond_2c
    :try_start_2c
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->isHardwareDetected(I)Z

    move-result p0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_34

    .line 727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    throw p0
.end method

.method public prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 28

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareForAuthentication called from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v4, :cond_4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_52

    :cond_4c
    move-object/from16 v8, p8

    move/from16 v6, p11

    const-string v4, ""

    :goto_52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FaceService"

    .line 430
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 437
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v3, v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v3

    if-nez v3, :cond_71

    const-string v0, "Null provider for prepareForAuthentication"

    .line 439
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 444
    :cond_71
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v5

    .line 449
    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x0

    move-object v0, v3

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v6, p11

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v13, p12

    invoke-interface/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V

    return-void
.end method

.method public registerAuthenticators(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1005
    new-instance v1, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_38
    const-string v1, ""

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 555
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_59

    const-string p0, "Null provider for remove"

    .line 557
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 561
    :cond_59
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeAll called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_35
    const-string v1, ""

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 576
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper$1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 608
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmServiceProviders(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    .line 609
    invoke-interface {p3}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v1

    .line 610
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 611
    iget v2, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    move-object v1, p3

    move-object v3, p1

    move v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    goto :goto_6b

    :cond_82
    return-void
.end method

.method public resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .registers 8

    .line 872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "resetLockout called from pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_3d
    const-string v0, ""

    :goto_3f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 878
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p1

    if-nez p1, :cond_6d

    .line 880
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Null provider for resetLockout, caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 885
    :cond_6d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    .line 888
    invoke-interface {p1, p2, p0, p4}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleResetLockout(II[B)V

    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .registers 16

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    :cond_3d
    const-string v1, ""

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 266
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object v2

    if-nez v2, :cond_73

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No matching sensor for revokeChallenge, sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_73
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v4

    move v3, p2

    move-object v5, p1

    move-object v6, p4

    move-wide v7, p5

    .line 282
    invoke-interface/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 285
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J
    .registers 19

    move-object v0, p0

    move v1, p4

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semAuthenticate called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v6, p2

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_57

    :cond_51
    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p6

    const-string v3, ""

    :goto_57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    .line 1056
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 1060
    invoke-static/range {p8 .. p8}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoRequestData([B)V

    .line 1061
    invoke-static/range {p7 .. p7}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setBundle(Landroid/os/Bundle;)V

    .line 1062
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v4

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    move-object/from16 v6, p6

    move v7, v9

    .line 1064
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)J
    .registers 19

    move-object v0, p0

    move v1, p1

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semEnroll called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_49
    move-object v5, p2

    move-object v6, p5

    const-string v3, ""

    :goto_4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    .line 1070
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1074
    invoke-static/range {p9 .. p9}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setBundle(Landroid/os/Bundle;)V

    .line 1075
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1077
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 4

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetRemainingLockoutTime called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 1222
    :cond_25
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    .line 1223
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semGetRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public semGetSecurityLevel(Z)I
    .registers 4

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetSecurityLevel called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 1202
    :cond_25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semGetSecurityLevel(Z)I

    move-result p0

    return p0
.end method

.method public semGetTrustAppVersion()Ljava/lang/String;
    .registers 3

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetTrustAppVersion called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return-object p0

    .line 1146
    :cond_25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semIsEnrollSession()Z
    .registers 3

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIsEnrollSession called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1084
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1086
    :cond_34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/face/FaceService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public semIsFrameworkHandleLockout()Z
    .registers 3

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIsFrameworkHandleLockout called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 1212
    :cond_25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semIsFrameworkHandleLockout()Z

    move-result p0

    return p0
.end method

.method public semIsSessionClose()Z
    .registers 3

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semIsSessionClose called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 1192
    :cond_25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semIsSessionClose()Z

    move-result p0

    return p0
.end method

.method public semPauseAuth()V
    .registers 3

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semPauseAuth called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_24

    return-void

    .line 1116
    :cond_24
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semPauseAuth()V

    return-void
.end method

.method public semPauseEnroll()V
    .registers 3

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semPauseEnroll called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_24

    return-void

    .line 1096
    :cond_24
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semPauseEnroll()V

    return-void
.end method

.method public semPrepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZLandroid/os/Bundle;)V
    .registers 12

    .line 1048
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "semPrepareForAuthenticationc called from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p2, :cond_51

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, ", "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p11}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_53

    :cond_51
    const-string p2, ""

    :goto_53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceService"

    .line 1048
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    return-void
.end method

.method public semResetAuthenticationTimeout()Z
    .registers 3

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semResetAuthenticationTimeout called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 1136
    :cond_25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semResetAuthenticationTimeout()Z

    move-result p0

    return p0
.end method

.method public semResumeAuth()V
    .registers 3

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semResumeAuth called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_24

    return-void

    .line 1126
    :cond_24
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semResumeAuth()V

    return-void
.end method

.method public semResumeEnroll()V
    .registers 3

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semResumeEnroll called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_24

    return-void

    .line 1106
    :cond_24
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semResumeEnroll()V

    return-void
.end method

.method public semSessionClose()V
    .registers 3

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSessionClose called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1176
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1178
    :cond_34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_3d

    return-void

    .line 1182
    :cond_3d
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semSessionClose()V

    return-void
.end method

.method public semSessionOpen()V
    .registers 3

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSessionOpen called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1163
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1165
    :cond_34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_3d

    return-void

    .line 1169
    :cond_3d
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semSessionOpen()V

    return-void
.end method

.method public semShouldRemoveTemplate()Z
    .registers 3

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semShouldRemoveTemplate called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 1233
    :cond_25
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semShouldRemoveTemplate()Z

    move-result p0

    return p0
.end method

.method public semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 8

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semUpdateTrustApp called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    sget-boolean p3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p3, :cond_41

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_41
    const-string p1, ""

    :goto_43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FaceService"

    .line 1151
    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckManagePermissionAndGetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_58

    return-void

    .line 1157
    :cond_58
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    new-instance p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {p1, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    invoke-interface {p0, p2, p1, p5}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method

.method public setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 21

    move-object v0, p0

    move v1, p2

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFeature called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 898
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v4, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_42

    :cond_3e
    move-object/from16 v12, p7

    const-string v4, ""

    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FaceService"

    .line 897
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 904
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetSingleProvider(Lcom/android/server/biometrics/sensors/face/FaceService;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_61

    const-string v0, "Null provider for setFeature"

    .line 906
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 911
    :cond_61
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v7

    .line 914
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-interface/range {v4 .. v12}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public startPreparedClient(II)V
    .registers 6

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPreparedClientcalled from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_35
    const-string v1, ""

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    .line 459
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mcheckPermissionForSemBioFaceManager(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    .line 466
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->-$$Nest$mgetProviderForSensor(Lcom/android/server/biometrics/sensors/face/FaceService;I)Lcom/android/server/biometrics/sensors/face/ServiceProvider;

    move-result-object p0

    if-nez p0, :cond_56

    const-string p0, "Null provider for startPreparedClient"

    .line 468
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 472
    :cond_56
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/ServiceProvider;->startPreparedClient(II)V

    return-void
.end method
