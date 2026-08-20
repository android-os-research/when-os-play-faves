.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSemSingleCameraDeviceStateUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/hardware/camera2/CameraManager$CameraDeviceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field final synthetic blacklist val$cameraId:Ljava/lang/String;

.field final synthetic blacklist val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$CameraDeviceState;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 3089
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p4, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 3093
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v0, v0, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mFacing:I

    const-string v1, "CameraManagerGlobal"

    packed-switch v0, :pswitch_data_54

    .line 3104
    const-string v0, "Unknown lens facing."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    return-void

    .line 3101
    :pswitch_f
    const/4 v0, 0x2

    .line 3102
    .local v0, "lensFacing":I
    goto :goto_15

    .line 3098
    .end local v0    # "lensFacing":I
    :pswitch_11
    const/4 v0, 0x0

    .line 3099
    .restart local v0    # "lensFacing":I
    goto :goto_15

    .line 3095
    .end local v0    # "lensFacing":I
    :pswitch_13
    const/4 v0, 0x1

    .line 3096
    .restart local v0    # "lensFacing":I
    nop

    .line 3108
    :goto_15
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget v2, v2, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mDeviceState:I

    packed-switch v2, :pswitch_data_5e

    .line 3122
    const-string v2, "Unknown device state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 3119
    :pswitch_22
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceClose(Ljava/lang/String;ILjava/lang/String;)V

    .line 3120
    goto :goto_52

    .line 3116
    :pswitch_2e
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceIdle(Ljava/lang/String;ILjava/lang/String;)V

    .line 3117
    goto :goto_52

    .line 3113
    :pswitch_3a
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceActive(Ljava/lang/String;ILjava/lang/String;)V

    .line 3114
    goto :goto_52

    .line 3110
    :pswitch_46
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$9;->val$state:Landroid/hardware/camera2/CameraManager$CameraDeviceState;

    iget-object v3, v3, Landroid/hardware/camera2/CameraManager$CameraDeviceState;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onSemCameraDeviceOpen(Ljava/lang/String;ILjava/lang/String;)V

    .line 3111
    nop

    .line 3125
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_22
    .end packed-switch
.end method
