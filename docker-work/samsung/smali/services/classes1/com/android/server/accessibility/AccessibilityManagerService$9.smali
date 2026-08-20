.class public Lcom/android/server/accessibility/AccessibilityManagerService$9;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->semOnLightNotification(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 6891
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 6894
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCameraId(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 6895
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraLightNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 6896
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraLightNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 6897
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_ON()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 6898
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraLightNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 6899
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_OFF()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 6900
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraLightNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 6901
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_ON()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 6902
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdoCameraLightNoti(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 6903
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_OFF()I

    move-result p0

    int-to-long v3, p0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_53

    :cond_4e
    const-string p0, "Can\'t use light notification please check CameraManager!"

    .line 6905
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6907
    :goto_53
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputbIsFlashOn(Z)V

    .line 6908
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flash blinked, bIsFlashOn : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetbIsFlashOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
