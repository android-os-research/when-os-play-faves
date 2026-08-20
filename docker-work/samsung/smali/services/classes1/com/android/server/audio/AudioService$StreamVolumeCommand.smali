.class public Lcom/android/server/audio/AudioService$StreamVolumeCommand;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVolumeCommand"
.end annotation


# instance fields
.field public final mDevice:I

.field public final mFlags:I

.field public final mIndex:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 3752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3753
    iput p1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    .line 3754
    iput p2, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    .line 3755
    iput p3, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    .line 3756
    iput p4, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 3761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    .line 3762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    .line 3763
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
