.class public Lcom/samsung/android/game/ApBooster;
.super Ljava/lang/Object;
.source "ApBooster.java"


# static fields
.field private static final MSG_ACQUIRE:I = 0x0

.field private static final MSG_RELEASE:I = 0x1

.field private static final MSG_SET_DVFS_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ApBooster"

.field private static final TARGET_BUS:I = 0x2

.field private static final TARGET_CPU:I = 0x1


# instance fields
.field private mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 29
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 30
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    .line 32
    new-instance v0, Lcom/samsung/android/game/ApBooster$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/ApBooster$1;-><init>(Lcom/samsung/android/game/ApBooster;)V

    iput-object v0, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/ApBooster;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/game/ApBooster;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ApBooster;->acquire(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/game/ApBooster;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/ApBooster;

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/game/ApBooster;->release()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/game/ApBooster;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/game/ApBooster;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ApBooster;->setDvfsValue(II)V

    return-void
.end method

.method private acquire(II)V
    .registers 7
    .param p1, "targetBit"    # I
    .param p2, "timeout"    # I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_d

    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_d

    .line 92
    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 94
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1a

    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_1a

    .line 96
    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 98
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/kernel/gmc/maxlock_delay_sec"

    invoke-static {v1, v0}, Lcom/samsung/android/game/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 99
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire(). invoked Util.writeFile, timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApBooster"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_55
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_63

    .line 104
    mul-int/lit16 v3, p2, 0x3e8

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 105
    const-string v1, "mCstateDisable.acquire()"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_63} :catch_64

    .line 109
    :cond_63
    goto :goto_68

    .line 107
    :catch_64
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method private release()V
    .registers 3

    .line 129
    const-string v0, "ApBooster"

    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_9

    .line 130
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 132
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_10

    .line 133
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 138
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mCstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_1c

    .line 139
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 140
    const-string v1, "mCstateDisable.release()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 144
    :cond_1c
    goto :goto_21

    .line 142
    :catch_1d
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method private setDvfsValue(II)V
    .registers 5
    .param p1, "target"    # I
    .param p2, "freq"    # I

    .line 186
    const/4 v0, 0x1

    if-ne v0, p1, :cond_9

    .line 187
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mCpuHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_2a

    .line 188
    :cond_9
    const/4 v0, 0x2

    if-ne v0, p1, :cond_12

    .line 189
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster;->mBusHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_2a

    .line 191
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDvfsValue()-wrong target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApBooster"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_2a
    return-void
.end method


# virtual methods
.method public callAcquire(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 52
    const-string v0, "value_int_1"

    const-string v1, "value_string_1"

    const-string v2, "{\"value_bool_1\":false}"

    .line 53
    .local v2, "response":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callAcquire(), jsonParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApBooster"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p1, :cond_21

    return-object v2

    .line 57
    :cond_21
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 60
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_6e

    .line 64
    :cond_33
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "target":Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, "targetBit":I
    if-eqz v1, :cond_44

    const-string v6, "cpu"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 67
    or-int/lit8 v5, v5, 0x1

    .line 68
    :cond_44
    if-eqz v1, :cond_50

    const-string v6, "bus"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 69
    or-int/lit8 v5, v5, 0x2

    .line 70
    :cond_50
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "acquireTimeSec":I
    if-eqz v5, :cond_6d

    if-gtz v0, :cond_59

    goto :goto_6d

    .line 75
    :cond_59
    iget-object v6, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 76
    .local v6, "msg":Landroid/os/Message;
    iput v5, v6, Landroid/os/Message;->arg1:I

    .line 77
    iput v0, v6, Landroid/os/Message;->arg2:I

    .line 78
    iget-object v7, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    const-string v4, "{\"value_bool_1\":true}"
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_6b} :catch_76
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6b} :catch_6f

    move-object v2, v4

    .line 85
    .end local v0    # "acquireTimeSec":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "targetBit":I
    .end local v6    # "msg":Landroid/os/Message;
    :goto_6c
    goto :goto_7d

    .line 72
    .restart local v0    # "acquireTimeSec":I
    .restart local v1    # "target":Ljava/lang/String;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v5    # "targetBit":I
    :cond_6d
    :goto_6d
    return-object v2

    .line 61
    .end local v0    # "acquireTimeSec":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v5    # "targetBit":I
    :cond_6e
    :goto_6e
    return-object v2

    .line 83
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    :catch_6f
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "callAcquire()-exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_76
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "callAcquire()-json exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_6c

    .line 86
    :goto_7d
    return-object v2
.end method

.method public callRelease()Ljava/lang/String;
    .registers 5

    .line 115
    const-string v0, "{\"value_bool_1\":false}"

    .line 118
    .local v0, "response":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    const-string v2, "{\"value_bool_1\":true}"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 123
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_1a

    .line 121
    :catch_12
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ApBooster"

    const-string v3, "callRelease()-exception"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return-object v0
.end method

.method public callSetDvfsValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 150
    const-string v0, "value_int_1"

    const-string v1, "value_string_1"

    const-string v2, "{\"value_bool_1\":false}"

    .line 151
    .local v2, "response":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSetDvfsValue(), jsonParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApBooster"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez p1, :cond_21

    return-object v2

    .line 155
    :cond_21
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 158
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_7a

    .line 162
    :cond_33
    iget-object v5, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 163
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "targetStr":Ljava/lang/String;
    const-string v7, "cpu"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 165
    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->arg1:I

    goto :goto_54

    .line 166
    :cond_4a
    const-string v7, "bus"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 167
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 172
    :goto_54
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "freq":I
    iput v0, v5, Landroid/os/Message;->arg2:I

    .line 174
    iget-object v6, p0, Lcom/samsung/android/game/ApBooster;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    const-string v4, "{\"value_bool_1\":true}"

    move-object v2, v4

    .line 181
    .end local v0    # "freq":I
    .end local v1    # "targetStr":Ljava/lang/String;
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "msg":Landroid/os/Message;
    :goto_62
    goto :goto_89

    .line 169
    .restart local v1    # "targetStr":Ljava/lang/String;
    .restart local v3    # "requestJson":Lorg/json/JSONObject;
    .restart local v5    # "msg":Landroid/os/Message;
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSetDvfsValue()-wrong target name: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_79} :catch_82
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_79} :catch_7b

    .line 170
    return-object v2

    .line 159
    .end local v1    # "targetStr":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_7a
    :goto_7a
    return-object v2

    .line 179
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    :catch_7b
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "callSetDvfsValue()-exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_82
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "callSetDvfsValue()-json exception"

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_62

    .line 182
    :goto_89
    return-object v2
.end method
