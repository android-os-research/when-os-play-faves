.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$10;
.super Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    .line 1280
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$10;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public daemonSetActiveUser(I)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSetActiveUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I

    move-result p0

    return p0
.end method
