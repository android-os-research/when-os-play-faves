.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;
.super Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 1702
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V

    return-void
.end method


# virtual methods
.method public sehInstallTAEnd([B)I
    .registers 2

    .line 1715
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonInstallTAEnd([B)I

    move-result p0

    return p0
.end method

.method public sehInstallTAStart()I
    .registers 1

    .line 1705
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonInstallTAStart()I

    move-result p0

    return p0
.end method

.method public sehInstallTAWrite([B)I
    .registers 2

    .line 1710
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$4;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonInstallTAWrite([B)I

    move-result p0

    return p0
.end method
