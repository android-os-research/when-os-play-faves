.class public Lcom/samsung/android/perfsdkservice/PerfSDKService;
.super Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;
.source "PerfSDKService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;
    }
.end annotation


# static fields
.field private static final PERFSDK_TYPE_ALIVECHECK:I = 0x6

.field private static final PERFSDK_TYPE_BOOSTLEVEL:I = 0x5

.field private static final PERFSDK_TYPE_FGAPP_CHG:I = 0x2

.field private static final PERFSDK_TYPE_FGAPP_SET:I = 0x3

.field private static final PERFSDK_TYPE_SERVICE:I = 0x1

.field private static final PERFSDK_TYPE_THERMAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PerfSDKService"


# instance fields
.field private KeyToken:Ljava/lang/String;

.field private bus_high:[I

.field private bus_low:[I

.field private client:Landroid/net/LocalSocket;

.field private cpu_high:[I

.field private cpu_low:[I

.field private gpu_high:[I

.field private gpu_low:[I

.field private in:Ljava/io/DataInputStream;

.field private mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mContext:Landroid/content/Context;

.field private mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

.field private mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mHandler:Landroid/os/Handler;

.field mPerfSDKProcessObserver:Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;

.field private out:Ljava/io/DataOutputStream;

.field private timeout_high:I

.field private timeout_low:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .line 93
    move-object/from16 v1, p0

    const-string v0, "PerfSDKService"

    const-string v2, " "

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;-><init>()V

    .line 64
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    .line 69
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 70
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 71
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    .line 73
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 74
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 75
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 76
    const/4 v3, 0x5

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    .line 77
    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    .line 78
    new-array v3, v3, [I

    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    .line 79
    const/4 v3, 0x3

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    .line 80
    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    .line 81
    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    .line 82
    const/16 v4, 0xbb8

    iput v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_high:I

    .line 83
    const/16 v4, 0x3e8

    iput v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_low:I

    .line 88
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v4, Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;

    invoke-direct {v4, v1}, Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;-><init>(Lcom/samsung/android/perfsdkservice/PerfSDKService;)V

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mPerfSDKProcessObserver:Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;

    .line 95
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    .line 97
    const-string v5, "CustomFrequencyManagerService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 98
    .local v5, "b":Landroid/os/IBinder;
    if-eqz v5, :cond_5a

    .line 99
    invoke-static {v5}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

    .line 103
    :cond_5a
    :try_start_5a
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v7, "PERFSDK_CPU_MIN"

    const/16 v8, 0xc

    invoke-static {v6, v7, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 104
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v7, "PERFSDK_GPU_MIN"

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 105
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v7, "PERFSDK_BUS_MIN"

    const/16 v8, 0x13

    invoke-static {v6, v7, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 107
    const-string v6, "ro.hardware.chipname"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "chipname":Ljava/lang/String;
    const-string v7, "exynos9820"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_99

    const-string v7, "exynos9825"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_97

    goto :goto_99

    :cond_97
    move v7, v8

    goto :goto_9a

    :cond_99
    :goto_99
    move v7, v9

    .line 109
    .local v7, "CHIP_MAKALU":Z
    :goto_9a
    const-string v10, "exynos990"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 110
    .local v10, "CHIP_EXYNOS990":Z
    const-wide v11, 0x3fd999999999999aL    # 0.4

    const/16 v16, 0x4

    const/16 v17, 0x2

    if-eqz v7, :cond_ee

    .line 111
    iget-object v15, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v14, 0x2ad8c

    invoke-virtual {v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v13

    aput v13, v15, v8

    .line 112
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x36bfa

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v9

    .line 113
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x3d18a

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v17

    .line 114
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x163780

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v3

    .line 115
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x196400

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v16

    goto/16 :goto_175

    .line 117
    :cond_ee
    if-eqz v10, :cond_132

    .line 118
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x11d162

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v8

    .line 119
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x14fdb0

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v9

    .line 120
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x1829fd

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v17

    .line 121
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x1c2692

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v3

    .line 122
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v15, 0x2018be

    invoke-virtual {v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v14

    aput v14, v13, v16

    goto :goto_175

    .line 124
    :cond_132
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v14, v11, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v14

    aput v14, v13, v8

    .line 125
    iget-object v13, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v14, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v14, v11, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v14

    aput v14, v13, v9

    .line 126
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v17

    .line 127
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v3

    .line 128
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v16

    .line 130
    :goto_175
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v13, v12, v8

    aput v13, v11, v8

    .line 131
    aget v13, v12, v9

    aput v13, v11, v9

    .line 132
    aget v12, v12, v17

    aput v12, v11, v17

    .line 133
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CPU levels : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v12, v12, v17

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v12, v12, v16

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v8

    .line 136
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v9

    .line 137
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v17

    .line 138
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v3

    .line 139
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v16

    .line 140
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v13, v12, v8

    aput v13, v11, v8

    .line 141
    aget v13, v12, v9

    aput v13, v11, v9

    .line 142
    aget v12, v12, v17

    aput v12, v11, v17

    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GPU levels : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v12, v12, v17

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v12, v12, v16

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v8

    .line 146
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v9

    .line 147
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v13, 0x3fe199999999999aL    # 0.55

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v17

    .line 148
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v3

    .line 149
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercentForSsrm(D)I

    move-result v12

    aput v12, v11, v16

    .line 150
    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v13, v12, v8

    aput v13, v11, v8

    .line 151
    aget v13, v12, v9

    aput v13, v11, v9

    .line 152
    aget v12, v12, v17

    aput v12, v11, v17

    .line 153
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BUS levels : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v8, v12, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v9, v11, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v9, v9, v17

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v3, v9, v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_30d} :catch_30f

    .line 159
    nop

    .end local v6    # "chipname":Ljava/lang/String;
    .end local v7    # "CHIP_MAKALU":Z
    .end local v10    # "CHIP_EXYNOS990":Z
    goto :goto_313

    .line 157
    :catch_30f
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_313
    :try_start_313
    iget-object v0, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mPerfSDKProcessObserver:Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_315} :catch_31d

    move-object/from16 v2, p2

    :try_start_317
    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_31a
    .catch Landroid/os/RemoteException; {:try_start_317 .. :try_end_31a} :catch_31b

    .line 167
    goto :goto_323

    .line 165
    :catch_31b
    move-exception v0

    goto :goto_320

    :catch_31d
    move-exception v0

    move-object/from16 v2, p2

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    :goto_320
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_323
    return-void
.end method

.method private getFGPkgName()Ljava/lang/String;
    .registers 6

    .line 194
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 195
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1e

    .line 199
    const-string v3, "PerfSDKService"

    const-string v4, "checkForegroundPackagename in tasks.size() <= 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v0

    .line 203
    :cond_1e
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 206
    .local v0, "packageName":Ljava/lang/String;
    return-object v0

    .line 207
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_2c
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 209
    return-object v0
.end method


# virtual methods
.method public connectionRequest()I
    .registers 6

    .line 449
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 451
    :try_start_5
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 452
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 453
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 454
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 455
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 456
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    .line 459
    goto :goto_1c

    .line 457
    :catch_19
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    :goto_1c
    :try_start_1c
    const-string v0, "PerfSDKService"

    const-string v2, "Start to connect to perfsdkserver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 465
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "perfsdkserver"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 467
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 468
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_51} :catch_54

    .line 484
    nop

    .line 486
    const/4 v0, 0x0

    return v0

    .line 469
    :catch_54
    move-exception v0

    .line 470
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    :try_start_58
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 474
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 475
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 476
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 477
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 478
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6d} :catch_6e

    .line 481
    goto :goto_71

    .line 479
    :catch_6e
    move-exception v2

    .line 480
    .local v2, "e1":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 483
    .end local v2    # "e1":Ljava/lang/Exception;
    :goto_71
    const/4 v1, -0x1

    return v1
.end method

.method public getAllowedPkgName()Ljava/lang/String;
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PERFSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 297
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangedForegroundPackagename()Ljava/lang/String;
    .registers 2

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->getFGPkgName()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "FGPkgname":Ljava/lang/String;
    return-object v0
.end method

.method public getForegroundPackagename()Ljava/lang/String;
    .registers 2

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->getFGPkgName()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "FGPkgname":Ljava/lang/String;
    return-object v0
.end method

.method public getHighBoostingLevel()[I
    .registers 6

    .line 309
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 313
    .local v0, "boostLevel":[I
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 314
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 315
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 318
    iget v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_high:I

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_31

    .line 322
    add-int/lit8 v3, v1, 0x6

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 323
    add-int/lit8 v3, v1, 0xb

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 324
    add-int/lit8 v3, v1, 0x10

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 327
    :cond_31
    return-object v0
.end method

.method public getLowBoostingLevel()[I
    .registers 6

    .line 332
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 336
    .local v0, "boostLevel":[I
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 337
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 338
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 341
    iget v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_low:I

    aput v1, v0, v2

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_30

    .line 345
    add-int/lit8 v3, v1, 0x6

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 346
    add-int/lit8 v3, v1, 0xb

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 347
    add-int/lit8 v3, v1, 0x10

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 350
    :cond_30
    return-object v0
.end method

.method public getThermalTable()[I
    .registers 8

    .line 355
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 357
    .local v0, "ThermalLevel":[I
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 358
    aput v1, v0, v2

    .line 359
    const/4 v3, 0x2

    const/16 v4, 0x1d6

    aput v4, v0, v3

    .line 360
    const/4 v3, 0x3

    const/16 v5, 0x1e0

    aput v5, v0, v3

    .line 361
    const/4 v3, 0x4

    const/16 v6, 0x1f4

    aput v6, v0, v3

    .line 363
    const/4 v3, 0x5

    aput v2, v0, v3

    .line 364
    const/4 v2, 0x6

    aput v1, v0, v2

    .line 365
    const/4 v1, 0x7

    aput v4, v0, v1

    .line 366
    const/16 v1, 0x8

    aput v5, v0, v1

    .line 367
    const/16 v1, 0x9

    aput v6, v0, v1

    .line 369
    return-object v0
.end method

.method public initPerfSDK(Ljava/lang/String;)I
    .registers 9
    .param p1, "serverName"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    .line 219
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 220
    .local v1, "uid":I
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "FGPkgname":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1a

    goto/16 :goto_d1

    .line 226
    :cond_1a
    const-string v4, "PerfSDKService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_32
    monitor-enter p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_a8

    .line 232
    :try_start_33
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    if-nez v4, :cond_3f

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->connectionRequest()I

    move-result v4

    if-gez v4, :cond_3f

    .line 234
    monitor-exit p0

    return v3

    .line 240
    :cond_3f
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 241
    .local v4, "req_cmd":I
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 242
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 245
    .local v5, "bytes_out":[B
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    move v4, v6

    .line 246
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 247
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 248
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v5, v6

    .line 251
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    move v4, v6

    .line 252
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 254
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    move v4, v6

    .line 257
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 258
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 260
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    move v0, v6

    .line 261
    .end local v4    # "req_cmd":I
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_33 .. :try_end_9c} :catchall_a5

    .line 282
    nop

    .line 284
    const-string v3, "PerfSDKService"

    const-string v4, "Transferring SDK\'server info to perfsdkserver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0

    .line 261
    .end local v5    # "bytes_out":[B
    :catchall_a5
    move-exception v4

    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    .end local v0    # "ret":I
    .end local v1    # "uid":I
    .end local v2    # "FGPkgname":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/perfsdkservice/PerfSDKService;
    .end local p1    # "serverName":Ljava/lang/String;
    :try_start_a7
    throw v4
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a8} :catch_a8

    .line 262
    .restart local v0    # "ret":I
    .restart local v1    # "uid":I
    .restart local v2    # "FGPkgname":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/perfsdkservice/PerfSDKService;
    .restart local p1    # "serverName":Ljava/lang/String;
    :catch_a8
    move-exception v4

    .line 264
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_aa
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    if-eqz v6, :cond_b3

    .line 265
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    .line 266
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 268
    :cond_b3
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    if-eqz v6, :cond_bc

    .line 269
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 270
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 272
    :cond_bc
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    if-eqz v6, :cond_c5

    .line 273
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 274
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c5} :catch_c6

    .line 278
    :cond_c5
    goto :goto_c9

    .line 276
    :catch_c6
    move-exception v6

    .line 277
    .local v6, "e1":Ljava/lang/Exception;
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 280
    .end local v6    # "e1":Ljava/lang/Exception;
    :goto_c9
    const-string v5, "PerfSDKService"

    const-string v6, "Fail to transfer SDK\'server info to perfsdkserver"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v3

    .line 223
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d1
    :goto_d1
    const-string v4, "PerfSDKService"

    const-string v5, "Fail to get Package name"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v3
.end method

.method public removeSessionKey(Ljava/lang/String;)I
    .registers 5
    .param p1, "sessionKey"    # Ljava/lang/String;

    .line 425
    const-string v0, "PerfSDKService"

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_30

    .line 431
    :cond_b
    :try_start_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, "uid":I
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, v1}, Landroid/os/ICustomFrequencyManager;->removeDvfsLockAllowedUid(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_14} :catch_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_14} :catch_16

    .line 439
    nop

    .end local v1    # "uid":I
    goto :goto_2b

    .line 437
    :catch_16
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "NumberFormatException"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 435
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1d
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_2a

    .line 433
    :catch_24
    move-exception v1

    .line 434
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "fail to disable siop maxlock"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2a
    nop

    .line 440
    :goto_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    .line 442
    const/4 v0, 0x0

    return v0

    .line 426
    :cond_30
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Key is not Correct : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, -0x1

    return v0
.end method

.method public setSessionKey(Ljava/lang/String;)I
    .registers 9
    .param p1, "sessionKey"    # Ljava/lang/String;

    .line 388
    const/4 v0, -0x1

    const-string v1, "PerfSDKService"

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_c

    goto :goto_69

    .line 395
    :cond_c
    move-object v2, p1

    .line 398
    .local v2, "tmpKey":Ljava/lang/String;
    :try_start_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, "uid":I
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v4, v3}, Landroid/os/ICustomFrequencyManager;->addDvfsLockAllowedUid(I)I

    move-result v4

    .line 400
    .local v4, "retUid":I
    if-lez v4, :cond_2e

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2e} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_2e} :catch_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2e} :catch_54

    .line 412
    .end local v3    # "uid":I
    .end local v4    # "retUid":I
    :cond_2e
    nop

    .line 414
    iget-object v3, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz v3, :cond_3b

    .line 416
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to set SessionKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v0

    .line 409
    :catch_54
    move-exception v3

    .line 410
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "NumberFormatException"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v0

    .line 406
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_5b
    move-exception v3

    .line 407
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "NullPointerException"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v0

    .line 403
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_62
    move-exception v3

    .line 404
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "fail to disable siop maxlock"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return v0

    .line 389
    .end local v2    # "tmpKey":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_69
    :goto_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session Key is not Correct : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v0
.end method
