.class Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;
.source "ActivityRecognitionProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    .line 56
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .registers 6
    .param p1, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 60
    .local v0, "callingUid":I
    const-string v1, "ActivityRecognitionProviderWatcher"

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_21

    .line 61
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

    .line 62
    return-void

    .line 66
    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    new-instance v3, Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {v3, p1}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V

    invoke-static {v2, v3}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->-$$Nest$fputmActivityRecognitionProvider(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_2c

    .line 69
    goto :goto_32

    .line 67
    :catch_2c
    move-exception v2

    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error creating Hardware Activity-Recognition"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method
