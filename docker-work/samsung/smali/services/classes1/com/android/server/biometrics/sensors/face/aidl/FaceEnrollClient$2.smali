.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$2;
.super Ljava/lang/Object;
.source "FaceEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    .line 303
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->stopHalOperation()V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    return-void
.end method
