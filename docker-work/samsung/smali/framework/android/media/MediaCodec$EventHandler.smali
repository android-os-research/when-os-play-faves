.class Landroid/media/MediaCodec$EventHandler;
.super Landroid/os/Handler;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private greylist-max-o mCodec:Landroid/media/MediaCodec;

.field final synthetic blacklist this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .registers 4
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1742
    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    .line 1743
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1744
    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    .line 1745
    return-void
.end method

.method private greylist-max-o handleCallback(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1795
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1796
    return-void

    .line 1799
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_14c

    goto/16 :goto_14b

    .line 1867
    :pswitch_12
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    new-instance v2, Landroid/media/MediaFormat;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 1869
    goto/16 :goto_14b

    .line 1861
    :pswitch_28
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    .line 1862
    goto/16 :goto_14b

    .line 1830
    :pswitch_39
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1831
    .local v0, "index":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    .line 1832
    .local v3, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1833
    :try_start_46
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v5

    packed-switch v5, :pswitch_data_158

    .line 1850
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_a4

    .line 1838
    :goto_52
    :pswitch_52
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v0, :cond_68

    .line 1839
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1841
    :cond_68
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$OutputFrame;

    .line 1842
    .local v2, "frame":Landroid/media/MediaCodec$OutputFrame;
    if-nez v2, :cond_85

    .line 1843
    new-instance v5, Landroid/media/MediaCodec$OutputFrame;

    invoke-direct {v5, v0}, Landroid/media/MediaCodec$OutputFrame;-><init>(I)V

    move-object v2, v5

    .line 1844
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1846
    :cond_85
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$OutputFrame;->setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V

    .line 1847
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 1848
    goto :goto_96

    .line 1835
    .end local v2    # "frame":Landroid/media/MediaCodec$OutputFrame;
    :pswitch_8c
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaCodec;->-$$Nest$mvalidateOutputByteBuffer(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1836
    nop

    .line 1853
    :goto_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_46 .. :try_end_97} :catchall_c1

    .line 1854
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1856
    goto/16 :goto_14b

    .line 1850
    :goto_a4
    :try_start_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized buffer mode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1

    .line 1853
    .restart local v0    # "index":I
    .restart local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_c1
    move-exception v1

    monitor-exit v4
    :try_end_c3
    .catchall {:try_start_a4 .. :try_end_c3} :catchall_c1

    throw v1

    .line 1802
    .end local v0    # "index":I
    .end local v3    # "info":Landroid/media/MediaCodec$BufferInfo;
    :pswitch_c4
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1803
    .restart local v0    # "index":I
    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v3}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1804
    :try_start_cd
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v4

    packed-switch v4, :pswitch_data_160

    .line 1820
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_12b

    .line 1809
    :goto_d9
    :pswitch_d9
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v0, :cond_ef

    .line 1810
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 1812
    :cond_ef
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodec$QueueRequest;

    .line 1813
    .local v4, "request":Landroid/media/MediaCodec$QueueRequest;
    if-nez v4, :cond_110

    .line 1814
    new-instance v5, Landroid/media/MediaCodec$QueueRequest;

    iget-object v6, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v7, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-direct {v5, v6, v7, v0, v2}, Landroid/media/MediaCodec$QueueRequest;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;ILandroid/media/MediaCodec$QueueRequest-IA;)V

    move-object v4, v5

    .line 1815
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v2}, Landroid/media/MediaCodec;->-$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1817
    :cond_110
    invoke-virtual {v4, v1}, Landroid/media/MediaCodec$QueueRequest;->setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;

    .line 1818
    goto :goto_11e

    .line 1806
    .end local v4    # "request":Landroid/media/MediaCodec$QueueRequest;
    :pswitch_114
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCachedInputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/media/MediaCodec;->-$$Nest$mvalidateInputByteBuffer(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V

    .line 1807
    nop

    .line 1823
    :goto_11e
    monitor-exit v3
    :try_end_11f
    .catchall {:try_start_cd .. :try_end_11f} :catchall_148

    .line 1824
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    .line 1825
    goto :goto_14b

    .line 1820
    :goto_12b
    :try_start_12b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized buffer mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "index":I
    .end local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1

    .line 1823
    .restart local v0    # "index":I
    .restart local p0    # "this":Landroid/media/MediaCodec$EventHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_148
    move-exception v1

    monitor-exit v3
    :try_end_14a
    .catchall {:try_start_12b .. :try_end_14a} :catchall_148

    throw v1

    .line 1877
    .end local v0    # "index":I
    :goto_14b
    return-void

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_39
        :pswitch_28
        :pswitch_12
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_52
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_114
        :pswitch_d9
    .end packed-switch
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1749
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    goto/16 :goto_94

    .line 1779
    :pswitch_7
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroid/media/MediaCodec;->-$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1780
    :try_start_e
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v1}, Landroid/media/MediaCodec;->-$$Nest$fgetmOnFirstTunnelFrameReadyListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    move-result-object v1

    .line 1781
    .local v1, "onFirstTunnelFrameReadyListener":Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_20

    .line 1782
    if-nez v1, :cond_19

    .line 1783
    goto/16 :goto_94

    .line 1785
    :cond_19
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-interface {v1, v0}, Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;->onFirstTunnelFrameReady(Landroid/media/MediaCodec;)V

    .line 1786
    goto/16 :goto_94

    .line 1781
    .end local v1    # "onFirstTunnelFrameReadyListener":Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 1761
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1762
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 1763
    .local v1, "i":I
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-media-time-us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1764
    .local v2, "mediaTimeUs":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-system-nano"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1766
    .local v3, "systemNano":Ljava/lang/Object;
    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v4}, Landroid/media/MediaCodec;->-$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1767
    :try_start_5d
    iget-object v5, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    invoke-static {v5}, Landroid/media/MediaCodec;->-$$Nest$fgetmOnFrameRenderedListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;

    move-result-object v5

    .line 1768
    .local v5, "onFrameRenderedListener":Landroid/media/MediaCodec$OnFrameRenderedListener;
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_83

    .line 1769
    if-eqz v2, :cond_82

    if-eqz v3, :cond_82

    if-nez v5, :cond_6b

    .line 1771
    goto :goto_82

    .line 1773
    :cond_6b
    iget-object v7, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    .line 1774
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1773
    move-object v6, v5

    invoke-interface/range {v6 .. v11}, Landroid/media/MediaCodec$OnFrameRenderedListener;->onFrameRendered(Landroid/media/MediaCodec;JJ)V

    .line 1762
    .end local v2    # "mediaTimeUs":Ljava/lang/Object;
    .end local v3    # "systemNano":Ljava/lang/Object;
    .end local v5    # "onFrameRenderedListener":Landroid/media/MediaCodec$OnFrameRenderedListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1776
    .end local v1    # "i":I
    :cond_82
    :goto_82
    goto :goto_94

    .line 1768
    .restart local v1    # "i":I
    .restart local v2    # "mediaTimeUs":Ljava/lang/Object;
    .restart local v3    # "systemNano":Ljava/lang/Object;
    :catchall_83
    move-exception v5

    :try_start_84
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v5

    .line 1757
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i":I
    .end local v2    # "mediaTimeUs":Ljava/lang/Object;
    .end local v3    # "systemNano":Ljava/lang/Object;
    :pswitch_86
    iget-object v0, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec$Callback;

    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$fputmCallback(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)V

    .line 1758
    goto :goto_94

    .line 1752
    :pswitch_90
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    .line 1753
    nop

    .line 1792
    :goto_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_90
        :pswitch_86
        :pswitch_23
        :pswitch_7
    .end packed-switch
.end method
