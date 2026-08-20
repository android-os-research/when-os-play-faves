.class Lcom/samsung/android/transcode/core/EncodeVideo$1;
.super Ljava/lang/Object;
.source "EncodeVideo.java"

# interfaces
.implements Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/transcode/core/EncodeVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 1586
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1605
    const-string v0, "TranscodeLib"

    const-string v1, "[conv] onError: internal error occur, stop & release"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_23

    .line 1607
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    .line 1608
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1609
    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1610
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw v1

    .line 1612
    :cond_23
    :goto_23
    return-void
.end method

.method public onInfo(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1589
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[conv] onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4e

    .line 1591
    const-string v1, "TranscodeLib"

    const-string v2, "INFO_NO_INPUT_DATA "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # getter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z
    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$000(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1593
    const-string v1, "TranscodeLib"

    const-string v2, "[conv] reached EOS"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    # setter for: Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$102(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z

    .line 1595
    const-string v0, "TranscodeLib"

    const-string v1, "HDR_videoDone true"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1597
    :try_start_42
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1598
    monitor-exit v0

    goto :goto_4e

    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_4b

    throw v1

    .line 1601
    :cond_4e
    :goto_4e
    return-void
.end method
