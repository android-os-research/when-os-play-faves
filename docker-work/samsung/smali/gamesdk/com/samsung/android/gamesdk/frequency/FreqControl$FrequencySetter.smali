.class Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
.super Ljava/lang/Object;
.source "FreqControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/frequency/FreqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencySetter"
.end annotation


# instance fields
.field private mEnable:Z

.field private final mLogTag:Ljava/lang/String;

.field private final mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "inSemDvfsManager"    # Lcom/samsung/android/os/SemDvfsManager;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 212
    iput-object p2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    .line 205
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z

    return v0
.end method


# virtual methods
.method acquire(I)V
    .registers 7
    .param p1, "percentage"    # I

    .line 218
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_3f

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v0

    .line 220
    .local v0, "approximateFrequency":I
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 222
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FreqControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::set() approximateFrequecy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z

    .line 224
    .end local v0    # "approximateFrequency":I
    monitor-exit p0

    .line 227
    goto :goto_66

    .line 224
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
    .end local p1    # "percentage":I
    :try_start_3e
    throw v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    .line 225
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
    .restart local p1    # "percentage":I
    :catch_3f
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FreqControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::set(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_66
    return-void
.end method

.method acquireMin(II)V
    .registers 9
    .param p1, "percentage"    # I
    .param p2, "resourceType"    # I

    .line 232
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_3f

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v0

    .line 234
    .local v0, "approximateFrequency":I
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 235
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 236
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FreqControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::set() approximateFrequecy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-boolean v3, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z

    .line 238
    .end local v0    # "approximateFrequency":I
    monitor-exit p0

    .line 241
    goto :goto_66

    .line 238
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
    .end local p1    # "percentage":I
    .end local p2    # "resourceType":I
    :try_start_3e
    throw v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    .line 239
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
    .restart local p1    # "percentage":I
    .restart local p2    # "resourceType":I
    :catch_3f
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FreqControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::set(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_66
    return-void
.end method

.method release()V
    .registers 6

    .line 246
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_2d

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 248
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@FreqControl"

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::release()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z

    .line 250
    monitor-exit p0

    .line 253
    goto :goto_54

    .line 250
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
    :try_start_2c
    throw v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_2d

    .line 251
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;
    :catch_2d
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FreqControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::release(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    return-void
.end method
