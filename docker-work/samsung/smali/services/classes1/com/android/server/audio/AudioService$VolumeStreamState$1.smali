.class public Lcom/android/server/audio/AudioService$VolumeStreamState$1;
.super Landroid/util/SparseIntArray;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public static synthetic $r8$lambda$Xpl7_tYHL-xpHPq5PWpI9wiZ-QI(Lcom/android/server/audio/AudioService$VolumeStreamState$1;ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->lambda$record$0(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 3

    .line 8144
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method private synthetic lambda$record$0(ILjava/lang/String;I)V
    .registers 7

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_7

    const-string p1, "default"

    goto :goto_b

    .line 8160
    :cond_7
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 8161
    :goto_b
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.volume."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    .line 8162
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 8164
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 8165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->MIN_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmIndexMin(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result p3

    .line 8166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmIndexMax(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result p0

    .line 8167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 8168
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method


# virtual methods
.method public put(II)V
    .registers 4

    .line 8147
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const-string/jumbo v0, "put"

    .line 8148
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(Ljava/lang/String;II)V

    return-void
.end method

.method public final record(Ljava/lang/String;II)V
    .registers 5

    .line 8158
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeStreamState$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState$1;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setValueAt(II)V
    .registers 4

    .line 8152
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 8153
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    const-string/jumbo v0, "setValueAt"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(Ljava/lang/String;II)V

    return-void
.end method
