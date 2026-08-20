.class public Lcom/android/server/audio/AudioService$MediaVolumeStreamState;
.super Lcom/android/server/audio/AudioService$VolumeStreamState;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaVolumeStreamState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 5

    .line 17175
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, 0x0

    .line 17176
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$MediaVolumeStreamState-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public applyDeviceVolume_syncVSS(I)V
    .registers 4

    .line 17211
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 17214
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPreventOverheatState()Z

    move-result v0

    if-eqz v0, :cond_24

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_24

    .line 17216
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setLimitedVolumeForOverheat()V

    .line 17220
    :cond_24
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_47

    .line 17221
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 17222
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetVolumeMonitorService(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v0

    .line 17223
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAvrcpAbsVolSupported(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    .line 17222
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setDeviceVolumeForBluetooth(IZ)V

    :cond_47
    return-void
.end method

.method public final isA2dpDevice(I)Z
    .registers 2

    .line 17229
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .registers 9

    .line 17181
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->isA2dpDevice(I)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string/jumbo v0, "setA2dpDeviceVolume"

    .line 17182
    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "onSetA2dpSinkConnectionState"

    .line 17183
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "enforceBluetoothSafeMediaVolume"

    .line 17184
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 17187
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateIndividualA2dpVolumes(I)V

    .line 17190
    :cond_29
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSafeMediaVolumeIndex(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-le p1, v0, :cond_55

    .line 17191
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmSafeMediaVolumeStateForBlueTooth(Lcom/android/server/audio/AudioService;I)V

    .line 17192
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disable safe index  volIdx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 17197
    :cond_55
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMuteMediaByVibrateOrSilentMode(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 17198
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRingerMode(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_90

    if-ne p2, v1, :cond_90

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-le p1, v0, :cond_90

    const-string/jumbo v0, "muteMediaStreamOfSpeaker"

    .line 17200
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 17201
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmSavedSpeakerMediaIndex(Lcom/android/server/audio/AudioService;I)V

    .line 17202
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSavedSpeakerMediaIndex(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const-string/jumbo v2, "speaker_media_index"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    .line 17206
    :cond_90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method
