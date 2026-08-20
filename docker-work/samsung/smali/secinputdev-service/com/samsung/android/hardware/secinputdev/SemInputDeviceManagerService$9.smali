.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 582
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDisplayChanged$0$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService$9(I)V
    .registers 3
    .param p1, "displayRotation"    # I

    .line 605
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setLcdOrientation(I)V

    .line 606
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "i"    # I

    .line 585
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "i"    # I

    .line 593
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetdisplayManager(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 594
    return-void

    .line 596
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetdisplayManager(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 597
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_16

    .line 598
    return-void

    .line 600
    :cond_16
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 601
    .local v1, "displayRotation":I
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcurrentRotation(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v2

    if-eq v2, v1, :cond_4b

    .line 602
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fputcurrentRotation(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)V

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    :cond_4b
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "i"    # I

    .line 589
    return-void
.end method
