.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


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

    .line 568
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(III)V
    .registers 6
    .param p1, "stateLogical"    # I
    .param p2, "statePhysical"    # I
    .param p3, "displayType"    # I

    .line 578
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$msetDisplayStateToDevice(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZIII)V

    .line 579
    return-void
.end method

.method public onStart(III)V
    .registers 6
    .param p1, "stateLogical"    # I
    .param p2, "statePhysical"    # I
    .param p3, "displayType"    # I

    .line 572
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$msetDisplayStateToDevice(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZIII)V

    .line 573
    return-void
.end method
