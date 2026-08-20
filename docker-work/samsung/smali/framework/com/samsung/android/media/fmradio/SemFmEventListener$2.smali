.class Lcom/samsung/android/media/fmradio/SemFmEventListener$2;
.super Landroid/os/Handler;
.source "SemFmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/SemFmEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/media/fmradio/SemFmEventListener;

    .line 291
    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_110

    goto/16 :goto_10e

    .line 351
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 352
    .local v0, "pieccArry":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    .line 353
    goto/16 :goto_10e

    .line 378
    .end local v0    # "pieccArry":[Ljava/lang/Object;
    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRecordingFinished()V

    goto/16 :goto_10e

    .line 345
    :pswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 346
    .local v0, "rtpArry":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    .line 347
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 346
    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioTextPlusReceived(IIIIII)V

    .line 348
    goto/16 :goto_10e

    .line 374
    .end local v0    # "rtpArry":[Ljava/lang/Object;
    :pswitch_6a
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onVolumeLocked()V

    .line 375
    goto/16 :goto_10e

    .line 368
    :pswitch_71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 369
    .local v0, "freq":Ljava/lang/Long;
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyReceived(J)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    .line 371
    goto/16 :goto_10e

    .line 364
    .end local v0    # "freq":Ljava/lang/Long;
    :pswitch_89
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyStarted()V

    .line 365
    goto/16 :goto_10e

    .line 360
    :pswitch_90
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemDisabled()V

    .line 361
    goto/16 :goto_10e

    .line 356
    :pswitch_97
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemEnabled()V

    .line 357
    goto/16 :goto_10e

    .line 338
    :pswitch_9e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 339
    .local v0, "obArry":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    .line 341
    goto :goto_10e

    .line 333
    .end local v0    # "obArry":[Ljava/lang/Object;
    :pswitch_b8
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetDisconnected()V

    .line 334
    goto :goto_10e

    .line 329
    :pswitch_be
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetConnected()V

    .line 330
    goto :goto_10e

    .line 324
    :pswitch_c4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 325
    .local v0, "freq":Ljava/lang/Long;
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    .line 326
    goto :goto_10e

    .line 319
    .end local v0    # "freq":Ljava/lang/Long;
    :pswitch_d2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    .local v0, "reasonCode":I
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDisabled(I)V

    .line 321
    goto :goto_10e

    .line 315
    .end local v0    # "reasonCode":I
    :pswitch_e0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioEnabled()V

    .line 316
    goto :goto_10e

    .line 305
    :pswitch_e6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    .line 306
    .local v0, "freqArry":[J
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStopped([J)V

    .line 307
    goto :goto_10e

    .line 310
    .end local v0    # "freqArry":[J
    :pswitch_f0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    .line 311
    .restart local v0    # "freqArry":[J
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanFinished([J)V

    .line 312
    goto :goto_10e

    .line 301
    .end local v0    # "freqArry":[J
    :pswitch_fa
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStarted()V

    .line 302
    goto :goto_10e

    .line 296
    :pswitch_100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 297
    .local v0, "freq":Ljava/lang/Long;
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onChannelFound(J)V

    .line 298
    nop

    .line 381
    .end local v0    # "freq":Ljava/lang/Long;
    :goto_10e
    return-void

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_100
        :pswitch_fa
        :pswitch_f0
        :pswitch_e6
        :pswitch_e0
        :pswitch_d2
        :pswitch_c4
        :pswitch_be
        :pswitch_b8
        :pswitch_9e
        :pswitch_97
        :pswitch_90
        :pswitch_89
        :pswitch_71
        :pswitch_6a
        :pswitch_2c
        :pswitch_25
        :pswitch_a
    .end packed-switch
.end method
