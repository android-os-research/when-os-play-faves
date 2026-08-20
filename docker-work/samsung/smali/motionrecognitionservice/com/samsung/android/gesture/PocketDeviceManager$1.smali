.class Lcom/samsung/android/gesture/PocketDeviceManager$1;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "PocketDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketDeviceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketDeviceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketDeviceManager$1;->this$0:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .registers 2
    .param p1, "attach"    # Z

    .line 143
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 6
    .param p1, "state"    # Z

    .line 134
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager$1;->this$0:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-static {v0, p1}, Lcom/samsung/android/gesture/PocketDeviceManager;->-$$Nest$fputisCoverOpened(Lcom/samsung/android/gesture/PocketDeviceManager;Z)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager$1;->this$0:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->-$$Nest$fgetisCoverOpened(Lcom/samsung/android/gesture/PocketDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager$1;->this$0:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_32

    .line 136
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cover is closed - PROXIMITY_SYSFS_SENSOR"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketDeviceManager$1;->this$0:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0xc

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 139
    :cond_32
    return-void
.end method
