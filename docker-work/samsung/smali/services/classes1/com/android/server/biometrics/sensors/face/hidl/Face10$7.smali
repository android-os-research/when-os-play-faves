.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;
.super Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleAuthenticate$8(IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic val$opPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZLjava/lang/String;)V
    .registers 47

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move-object/from16 v22, v0

    move-object v0, v15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    move/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    move/from16 v20, p21

    move/from16 v21, p22

    move-object/from16 v1, p1

    .line 972
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;->val$opPackageName:Ljava/lang/String;

    move-object/from16 v1, p2

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZ)V

    return-void
.end method


# virtual methods
.method public daemonAuthenticate(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;->val$opPackageName:Ljava/lang/String;

    const-string v2, "A"

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonAuthenticate(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V

    return-void
.end method

.method public daemonAuthenticationCancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    .line 981
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonCancel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I

    .line 982
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method
