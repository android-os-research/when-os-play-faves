.class public Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;
.super Ljava/lang/Object;
.source "CameraKillModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bgslotmanager/CameraKillModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraKillModeOperator"
.end annotation


# static fields
.field public static final CAMERA_ACTIVE:I = 0x1

.field public static final CAMERA_ACTIVETOACTIVE:I = 0xb

.field public static final CAMERA_CLOSE:I = 0x3

.field public static final CAMERA_IDLE:I = 0x2

.field public static final CAMERA_IDLETOIDLE:I = 0xc

.field public static final CAMERA_OPEN:I


# instance fields
.field public cameraState:I

.field public prevCameraState:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CameraKillModeManager;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runLmkdCameraKillMode(II)V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 173
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmDynamicHiddenApp(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v0

    iget p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp;->setLmkdCameraKillBoost(III)V

    :cond_13
    return-void
.end method

.method public runReduceBackgroundCached()V
    .registers 6

    .line 153
    iget v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 154
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetisOriginBG(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 155
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fputisOriginBG(Lcom/android/server/bgslotmanager/CameraKillModeManager;Z)V

    .line 156
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmBGSlotManager(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/bgslotmanager/BGSlotManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->restoreFromCameraBGSlot()V

    goto :goto_7c

    .line 159
    :cond_1d
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetisOriginBG(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Z

    move-result v0

    if-ne v0, v1, :cond_7c

    .line 160
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmInfo(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/bgslotmanager/MemInfoGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;->getAvailableMemLegacy()J

    move-result-wide v0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Mem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " CAM TH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v3}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmMinFreeMax(Lcom/android/server/bgslotmanager/CameraKillModeManager;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v4}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmSzDHAThresholdRate(Lcom/android/server/bgslotmanager/CameraKillModeManager;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicHiddenApp_CameraKillModeManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v2}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmMinFreeMax(Lcom/android/server/bgslotmanager/CameraKillModeManager;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v3}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmSzDHAThresholdRate(Lcom/android/server/bgslotmanager/CameraKillModeManager;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7c

    .line 164
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fgetmBGSlotManager(Lcom/android/server/bgslotmanager/CameraKillModeManager;)Lcom/android/server/bgslotmanager/BGSlotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setCameraBGSlot()V

    .line 165
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fputisOriginBG(Lcom/android/server/bgslotmanager/CameraKillModeManager;Z)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public setState(IZ)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 178
    iget-object v2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v2, v1}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fputisUsingCamera(Lcom/android/server/bgslotmanager/CameraKillModeManager;Z)V

    .line 179
    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_35

    .line 180
    :cond_c
    iget v2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->prevCameraState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    if-ne p1, v1, :cond_16

    .line 181
    iput v1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_35

    :cond_16
    if-ne p1, v1, :cond_1d

    const/16 v0, 0xb

    .line 183
    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_35

    :cond_1d
    if-ne v2, v1, :cond_24

    if-ne p1, v3, :cond_24

    .line 185
    iput v3, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_35

    :cond_24
    if-ne p1, v3, :cond_2b

    const/16 v0, 0xc

    .line 187
    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_35

    :cond_2b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_35

    .line 189
    iput v1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    .line 190
    iget-object v1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-static {v1, v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager;->-$$Nest$fputisUsingCamera(Lcom/android/server/bgslotmanager/CameraKillModeManager;Z)V

    :cond_35
    :goto_35
    if-eqz p2, :cond_39

    .line 194
    iput p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->prevCameraState:I

    :cond_39
    return-void
.end method
