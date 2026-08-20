.class public Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManagerWrapper.java"

# interfaces
.implements Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioDeviceVolumeManagerWrapper"


# instance fields
.field public final mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {v0, p1}, Landroid/media/AudioDeviceVolumeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    return-void
.end method


# virtual methods
.method public addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioDeviceVolumeManager;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    return-void
.end method

.method public removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioDeviceVolumeManager;->removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    return-void
.end method

.method public setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V
    .registers 12

    .line 64
    iget-object v0, p0, Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V

    return-void
.end method
