.class Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
.super Landroid/telephony/TelephonyCallback;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTelephonyCallbackListener"
.end annotation


# instance fields
.field private callState:Z

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .registers 2

    .line 1833
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 1836
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 7
    .param p1, "state"    # I

    .line 1840
    const-string v0, "MotionRecognitionService"

    const-string v1, "Call state check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const-string v1, "/sys/class/sensors/proximity_sensor/check_far_state"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_9e

    goto/16 :goto_9d

    .line 1857
    :pswitch_f
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1859
    :try_start_1a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_38

    move-object v1, v2

    .line 1860
    .local v1, "out":Ljava/io/FileOutputStream;
    const/16 v2, 0x30

    :try_start_22
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 1861
    const-string v2, "Call is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2e

    .line 1862
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_38

    .line 1864
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_3e

    .line 1859
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v3

    :try_start_34
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .end local p1    # "state":I
    :goto_37
    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    .line 1862
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .restart local p1    # "state":I
    :catch_38
    move-exception v1

    .line 1863
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "File not found!/sys/class/sensors/proximity_sensor/check_far_state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    .line 1866
    const-string v1, "OFFHOOK callStatetrue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    goto :goto_9d

    .line 1869
    :pswitch_47
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    .line 1870
    const-string v1, "RINGING callStatefalse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    goto :goto_9d

    .line 1843
    :pswitch_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE callState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1846
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    if-eqz v3, :cond_9a

    .line 1847
    :try_start_76
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7b} :catch_94

    move-object v1, v3

    .line 1848
    .local v1, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x31

    :try_start_7e
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 1849
    const-string v3, "Call is disconnected: Send a far event"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_8a

    .line 1850
    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_94

    .line 1852
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_9a

    .line 1847
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_8a
    move-exception v3

    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception v4

    :try_start_90
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .end local p1    # "state":I
    :goto_93
    throw v3
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_94} :catch_94

    .line 1850
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .restart local p1    # "state":I
    :catch_94
    move-exception v1

    .line 1851
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "File write fail!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9a
    :goto_9a
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    .line 1855
    nop

    .line 1875
    :goto_9d
    return-void

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_47
        :pswitch_f
    .end packed-switch
.end method
