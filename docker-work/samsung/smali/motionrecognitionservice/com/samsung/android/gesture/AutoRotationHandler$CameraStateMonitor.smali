.class Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;
    }
.end annotation


# static fields
.field private static final MSG_CAMERA_CHANGED:I = 0x3

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CameraStateMonitor"


# instance fields
.field private isCameraRunning:Z

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

.field private mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

.field final synthetic this$0:Lcom/samsung/android/gesture/AutoRotationHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraStateHandler(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckCameraRunning(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->checkCameraRunning(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStart(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->handleStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStop(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->handleStop()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 905
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 891
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    .line 893
    new-instance p1, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$1;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;)V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    .line 902
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraState:Ljava/util/Map;

    .line 903
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->isCameraRunning:Z

    .line 906
    const-string p1, "camera"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 907
    new-instance p1, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    .line 908
    return-void
.end method

.method private checkCameraRunning(Ljava/lang/String;I)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .line 934
    if-nez p1, :cond_3

    return-void

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const/4 v0, 0x0

    .line 939
    .local v0, "cameraRunning":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 940
    .local v2, "state":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 941
    const/4 v0, 0x1

    .line 942
    goto :goto_2d

    .line 944
    .end local v2    # "state":Ljava/lang/Integer;
    :cond_2c
    goto :goto_17

    .line 946
    :cond_2d
    :goto_2d
    iget-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->isCameraRunning:Z

    if-eq v0, v1, :cond_41

    .line 947
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v1

    if-eqz v0, :cond_3c

    const/16 v2, 0x1e

    goto :goto_3e

    :cond_3c
    const/16 v2, 0x1f

    :goto_3e
    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    .line 950
    :cond_41
    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->isCameraRunning:Z

    .line 951
    return-void
.end method

.method private handleStart()V
    .registers 5

    .line 915
    const-string v0, "CameraStateMonitor"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->isCameraRunning:Z

    .line 917
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    iget-object v3, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_e} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_46

    .line 920
    :catch_f
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception occured while starting CameraStateMonitor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 918
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v1

    .line 919
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException occured while starting CameraStateMonitor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_46
    nop

    .line 923
    :goto_47
    return-void
.end method

.method private handleStop()V
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateCallback:Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    .line 931
    return-void
.end method


# virtual methods
.method public start()V
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->sendEmptyMessage(I)Z

    .line 912
    return-void
.end method

.method public stop()V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor;->mCameraStateHandler:Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$CameraStateMonitor$CameraStateHandler;->sendEmptyMessage(I)Z

    .line 927
    return-void
.end method
