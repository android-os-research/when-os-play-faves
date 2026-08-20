.class public final Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "AudioRecordingDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;
    }
.end annotation


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    .line 45
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;

    if-eqz p0, :cond_a

    .line 64
    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public register(Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;

    .line 50
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector$AudioRecordingCallback;

    .line 56
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    :cond_c
    return-void
.end method
