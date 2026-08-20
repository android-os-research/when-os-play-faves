.class public final Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
.super Landroid/hardware/iris/IIrisService$Stub;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IrisServiceWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;


# direct methods
.method public static synthetic $r8$lambda$6fvoJuPbVH9Vzt-GpKdiYXZzSNs(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->lambda$registerAuthenticators$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-direct {p0}, Landroid/hardware/iris/IIrisService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V

    return-void
.end method

.method private synthetic lambda$registerAuthenticators$0(Ljava/util/List;)V
    .registers 7

    const-string v0, "biometric"

    .line 73
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 76
    iget v2, v1, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 77
    iget v1, v1, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    .line 78
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v1

    .line 80
    new-instance v3, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/iris/IrisService;->-$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/iris/IrisService;)Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;-><init>(Landroid/hardware/iris/IIrisService;I)V

    const/4 v4, 0x4

    .line 83
    :try_start_2e
    invoke-interface {v0, v2, v4, v1, v3}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_e

    .line 86
    :catch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception when registering sensorId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IrisService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_49
    return-void
.end method


# virtual methods
.method public registerAuthenticators(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "IrisService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    new-instance v0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
