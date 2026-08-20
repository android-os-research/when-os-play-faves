.class public Lcom/android/server/audio/AudioService$8;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 16194
    iput-object p1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 2

    .line 16271
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkDeviceConnected(I)Z
    .registers 2

    .line 16237
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkDeviceConnected(I)Z

    move-result p0

    return p0
.end method

.method public clearNotification()V
    .registers 1

    .line 16202
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearNotification()V

    return-void
.end method

.method public getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 16248
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageManager(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageManager(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 16249
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 16248
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 16249
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedDevice()I
    .registers 1

    .line 16227
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getConnectedDevice()I

    move-result p0

    return p0
.end method

.method public getCurrentMediaDevice()I
    .registers 1

    .line 16232
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getObservedDevicesForMedia()I

    move-result p0

    return p0
.end method

.method public getMultiSoundAppFromSetting()Ljava/lang/String;
    .registers 2

    .line 16276
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "multisound_app"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName(I)[Ljava/lang/String;
    .registers 2

    .line 16242
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetPackageName(Lcom/android/server/audio/AudioService;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInstalledApp(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 16255
    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_11

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :catch_11
    :cond_11
    return v0
.end method

.method public sendBecomingNoisyIntent(I)V
    .registers 2

    .line 16266
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBecomingNoisyIntent(Lcom/android/server/audio/AudioService;I)I

    return-void
.end method

.method public setAppCastingState(ZI)V
    .registers 3

    .line 16281
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaSessionServiceInternal(Lcom/android/server/audio/AudioService;)Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->setAppCastingState(ZI)V

    return-void
.end method

.method public showHeadUpNotification(I)V
    .registers 3

    .line 16207
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    return-void
.end method

.method public showNotification()V
    .registers 1

    .line 16197
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    return-void
.end method

.method public updateFocusRequester(I)V
    .registers 2

    .line 16217
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    return-void
.end method

.method public updateFocusRequester(IZ)V
    .registers 3

    .line 16222
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    return-void
.end method

.method public updateForegroundUid(I)V
    .registers 2

    .line 16212
    iget-object p0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmForegroundUid(Lcom/android/server/audio/AudioService;I)V

    return-void
.end method
