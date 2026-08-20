.class Lcom/android/location/provider/ActivityRecognitionProviderClient$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;
.source "ActivityRecognitionProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProviderClient;

    .line 38
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    .registers 7
    .param p1, "isSupported"    # Z
    .param p2, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 44
    .local v0, "callingUid":I
    const-string v1, "ArProviderClient"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_21

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring calls from non-system server. Uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 50
    :cond_21
    if-eqz p1, :cond_30

    :try_start_23
    new-instance v2, Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {v2, p2}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_31

    .line 51
    :catch_29
    move-exception v2

    .line 52
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error creating Hardware Activity-Recognition Provider."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-void

    .line 50
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v2, 0x0

    :goto_31
    move-object v1, v2

    .line 54
    .local v1, "provider":Lcom/android/location/provider/ActivityRecognitionProvider;
    nop

    .line 55
    iget-object v2, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;

    invoke-virtual {v2, p1, v1}, Lcom/android/location/provider/ActivityRecognitionProviderClient;->onProviderChanged(ZLcom/android/location/provider/ActivityRecognitionProvider;)V

    .line 56
    return-void
.end method
