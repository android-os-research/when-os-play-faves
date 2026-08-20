.class public Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetVolumeRunnable"
.end annotation


# instance fields
.field public mUid:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V
    .registers 3

    .line 1150
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1156
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "l_multi_sound_key"

    .line 1157
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    const-string/jumbo v2, "uid"

    .line 1158
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->mUid:I

    .line 1159
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppVolumeFloat(I)F

    move-result v1

    const-string/jumbo v2, "volume"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;F)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 1160
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 1161
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmAudioSystem(Lcom/samsung/android/server/audio/MultiSoundManager;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method
