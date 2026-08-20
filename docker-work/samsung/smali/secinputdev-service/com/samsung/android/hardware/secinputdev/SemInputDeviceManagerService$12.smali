.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "SemInputDeviceManagerService.java"


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

    .line 656
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCoverSwitchStateChanged$0$com-samsung-android-hardware-secinputdev-SemInputDeviceManagerService$12(ZI)V
    .registers 5
    .param p1, "switchState"    # Z
    .param p2, "coverType"    # I

    .line 667
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetgloveMode(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setClearCoverMode(III)V

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 7
    .param p1, "switchState"    # Z

    .line 661
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcoverManager(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    if-eqz v0, :cond_55

    .line 662
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcoverManager(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    move-object v2, v0

    .local v2, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_4f

    .line 663
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    .line 665
    .local v0, "coverType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverSwitchStateChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$sfgetmainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$12;ZI)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 668
    .end local v0    # "coverType":I
    nop

    .line 676
    return-void

    .line 669
    :cond_4f
    const-string v0, "onCoverSwitchStateChanged : getCoverState is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 673
    .end local v2    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_55
    const-string v0, "onCoverSwitchStateChanged : coverManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void
.end method
