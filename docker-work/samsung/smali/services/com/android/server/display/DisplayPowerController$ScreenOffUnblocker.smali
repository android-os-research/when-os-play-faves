.class public final Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenOffUnblocker"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 4347
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .registers 3

    .line 4350
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetTAG(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[api] WindowManagerPolicy.ScreenOffListener : called onScreenOff()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4352
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
