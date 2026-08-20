.class public Lcom/android/server/wm/FlexibleDisplayController$1;
.super Ljava/lang/Object;
.source "FlexibleDisplayController.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FlexibleDisplayController;->lambda$requestDeviceFolded$1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FlexibleDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FlexibleDisplayController;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController$1;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 3

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRequestCanceled, mDeviceStateRequest="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/FlexibleDisplayController$1;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {v0}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fgetmDeviceStateRequest(Lcom/android/server/wm/FlexibleDisplayController;)Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Callers="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    .line 121
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/server/wm/FlexibleDisplayController$1;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    invoke-static {p1}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fgetmDeviceStateRequest(Lcom/android/server/wm/FlexibleDisplayController;)Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 123
    iget-object p0, p0, Lcom/android/server/wm/FlexibleDisplayController$1;->this$0:Lcom/android/server/wm/FlexibleDisplayController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController;->-$$Nest$fputmDeviceStateRequest(Lcom/android/server/wm/FlexibleDisplayController;Landroid/hardware/devicestate/DeviceStateRequest;)V

    :cond_38
    return-void
.end method
