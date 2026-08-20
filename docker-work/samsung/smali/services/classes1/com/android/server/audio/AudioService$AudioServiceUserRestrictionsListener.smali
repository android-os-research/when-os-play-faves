.class public Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 9720
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9

    const-string/jumbo v0, "no_unmute_microphone"

    .line 9728
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 9730
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eq v1, v0, :cond_17

    .line 9732
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmMicMuteFromRestrictions(Lcom/android/server/audio/AudioService;Z)V

    .line 9733
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msetMicrophoneMuteNoCallerCheck(Lcom/android/server/audio/AudioService;I)V

    :cond_17
    const-string/jumbo v0, "no_adjust_volume"

    .line 9740
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "disallow_unmute_device"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2d

    .line 9741
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2b

    goto :goto_2d

    :cond_2b
    move p3, v4

    goto :goto_2e

    :cond_2d
    :goto_2d
    move p3, v3

    .line 9743
    :goto_2e
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 9744
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v4

    :cond_3c
    :goto_3c
    if-eq p3, v3, :cond_43

    .line 9746
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, v3, v4, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msetMasterMuteInternalNoCallerCheck(Lcom/android/server/audio/AudioService;ZII)V

    :cond_43
    return-void
.end method
