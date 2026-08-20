.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;
.super Landroid/content/BroadcastReceiver;
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

    .line 431
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 435
    const-string v0, "attach"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 436
    .local v0, "attached":Z
    const-string v2, "real_cover_type"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 437
    .local v2, "cover_type":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverBroadcastReceiver: attached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cover_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputDeviceManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz v0, :cond_6f

    .line 440
    if-nez v2, :cond_4a

    .line 441
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenCoverType(I)I

    goto :goto_78

    .line 442
    :cond_4a
    const/4 v1, 0x4

    if-ne v2, v1, :cond_58

    .line 443
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenCoverType(I)I

    goto :goto_78

    .line 445
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coverBroadcastReceiver: invalid cover type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 448
    :cond_6f
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setSpenCoverType(I)I

    .line 451
    .end local v0    # "attached":Z
    .end local v2    # "cover_type":I
    :cond_78
    :goto_78
    return-void
.end method
