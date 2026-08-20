.class public Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioManagerBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x19

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2d

    const-string p1, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 483
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v4, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 484
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_65

    .line 486
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne p1, v5, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    const-string p1, "MUSIC_SHARE"

    invoke-static {v4, p1, v1, v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->-$$Nest$mpostDeviceRoute(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_65

    .line 489
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v4, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const-string/jumbo p1, "state"

    .line 490
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 491
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    if-ne p1, v2, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    :goto_46
    const-string p1, "SCREEN_MIRRORING"

    invoke-static {v4, p1, v1, v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->-$$Nest$mpostDeviceRoute(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_65

    .line 492
    :cond_4c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    .line 493
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_65

    .line 495
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/media/SystemMediaRoute2Provider;->mHdmiRoute:Landroid/media/MediaRoute2Info;

    .line 499
    :cond_65
    :goto_65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    return-void

    :cond_7e
    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 504
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_89

    return-void

    .line 509
    :cond_89
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    return-void
.end method
