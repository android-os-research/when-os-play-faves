.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


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

    .line 638
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDesktopModeStateChanged$0$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService$11(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 647
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setExternalNoiseMode(II)I

    .line 648
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->isSupportAot()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 649
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setDoubleTabToWakeUp(I)I

    .line 651
    :cond_1f
    return-void
.end method

.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 641
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x28

    if-ne v0, v3, :cond_c

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-eq v0, v2, :cond_16

    :cond_c
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_29

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v1, :cond_29

    .line 644
    :cond_16
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    move v0, v1

    .line 646
    .local v0, "mode":I
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$11;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    .end local v0    # "mode":I
    :cond_29
    return-void
.end method
