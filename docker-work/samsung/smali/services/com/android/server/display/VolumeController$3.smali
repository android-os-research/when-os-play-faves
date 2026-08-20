.class public Lcom/android/server/display/VolumeController$3;
.super Ljava/lang/Object;
.source "VolumeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/VolumeController;->sendVolumeChangedEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/VolumeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VolumeController;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    invoke-static {v0}, Lcom/android/server/display/VolumeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/VolumeController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "minVol"

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "maxVol"

    const/16 v3, 0x64

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v2, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    invoke-static {v2}, Lcom/android/server/display/VolumeController;->-$$Nest$fgetmVolume(Lcom/android/server/display/VolumeController;)I

    move-result v2

    const-string v3, "curVol"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget-object v2, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    invoke-static {v2}, Lcom/android/server/display/VolumeController;->-$$Nest$fgetmMuted(Lcom/android/server/display/VolumeController;)Z

    move-result v2

    const-string/jumbo v3, "isMute"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 134
    iget-object p0, p0, Lcom/android/server/display/VolumeController$3;->this$0:Lcom/android/server/display/VolumeController;

    invoke-static {p0}, Lcom/android/server/display/VolumeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/VolumeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
