.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$13;
.super Ljava/lang/Object;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 679
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$13;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "isEarly":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$13;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetcommandService(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->setTspEnabled(IIZ)I

    .line 683
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$13;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v1, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$msetMainDisplayOn(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Z)V

    .line 684
    return-void
.end method
