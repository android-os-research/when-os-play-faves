.class public Lcom/android/server/display/WifiDisplayController$19;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleWifiDisplayStateBroadcast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$state:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 3

    .line 1715
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$19;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleWifiDisplayStateBroadcast:: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const-string v1, "ON"

    goto :goto_15

    :cond_13
    const-string v1, "OFF"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", [VolumeControl] isVolumeControlSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disconnectByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDisconnectByUser(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1722
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1723
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$state:I

    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1724
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    const-string/jumbo v3, "isSupportDisplayVolumeControl"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1725
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmDisconnectByUser(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    const-string v3, "by_user"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1726
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsPortraitDisplay(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v1

    const-string/jumbo v3, "isPortraitDisplay"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1727
    iget v1, p0, Lcom/android/server/display/WifiDisplayController$19;->val$state:I

    if-ne v1, v2, :cond_90

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 1728
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v1

    const-string/jumbo v3, "mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1730
    :cond_90
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmContext(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1732
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmIsDisplayVolumeControlSupported(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_df

    .line 1733
    iget v0, p0, Lcom/android/server/display/WifiDisplayController$19;->val$state:I

    const/16 v3, 0xf

    const/16 v4, 0x19

    const/4 v5, 0x3

    if-ne v0, v2, :cond_c4

    .line 1734
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioManager(Lcom/android/server/display/WifiDisplayController;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmPrevMusicStreamVolume(Lcom/android/server/display/WifiDisplayController;I)V

    .line 1735
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioManager(Lcom/android/server/display/WifiDisplayController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v1, v4}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    goto :goto_df

    .line 1737
    :cond_c4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioManager(Lcom/android/server/display/WifiDisplayController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    move-result v0

    .line 1738
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAudioManager(Lcom/android/server/display/WifiDisplayController;)Landroid/media/AudioManager;

    move-result-object v2

    if-ne v0, v3, :cond_dc

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmPrevMusicStreamVolume(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    :cond_dc
    invoke-virtual {v2, v5, v0, v1, v4}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    .line 1742
    :cond_df
    :goto_df
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmDisconnectByUser(Lcom/android/server/display/WifiDisplayController;Z)V

    return-void
.end method
