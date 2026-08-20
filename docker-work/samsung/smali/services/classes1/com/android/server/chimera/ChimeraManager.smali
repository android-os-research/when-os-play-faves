.class public Lcom/android/server/chimera/ChimeraManager;
.super Ljava/lang/Object;
.source "ChimeraManager.java"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChimeraManager"

.field public static final VERSION:Ljava/lang/String; = "2.0"


# instance fields
.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

.field public mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public mSwapManager:Lcom/android/server/chimera/SwapManager;

.field public mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 22
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 23
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 25
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 27
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 28
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    .line 34
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/RepositoryFactory;->getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 35
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p2, v0}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 36
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "ObserverHandler"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 37
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance p2, Lcom/android/server/chimera/ChimeraRecentAppManager;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 40
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/android/server/chimera/ChimeraRecentAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Landroid/os/Looper;)V

    .line 41
    new-instance v0, Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-direct {v0, p2, v1, v2}, Lcom/android/server/chimera/ChimeraStrategy;-><init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 42
    new-instance p2, Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {p2, v0}, Lcom/android/server/chimera/ChimeraAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 43
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 45
    new-instance p2, Lcom/android/server/chimera/SystemEventListener;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/chimera/SystemEventListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V

    iput-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 48
    invoke-virtual {p2, p0}, Lcom/android/server/chimera/SystemEventListener;->addMediaScanFinishedListener(Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;)V

    .line 50
    invoke-static {p1}, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;->schedule(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public collectStandbyBucket()V
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppManager;->collectStandbyBucketList()V

    return-void
.end method

.method public createPolicyHandler()V
    .registers 7

    .line 104
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener()V

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 109
    new-instance v0, Lcom/android/server/chimera/ConservativePolicyHandler;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/chimera/ConservativePolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 112
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isSwapEnabled()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 113
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/chimera/SwapManager;->getInstance(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)Lcom/android/server/chimera/SwapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    .line 115
    new-instance v1, Lcom/android/server/chimera/AggressivePolicyHandler;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/chimera/AggressivePolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SwapManager;->addSwapNotEnoughListener(Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;)V

    goto :goto_5a

    .line 118
    :cond_46
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    goto :goto_5a

    .line 121
    :cond_49
    new-instance v0, Lcom/android/server/chimera/AggressivePolicyHandler;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/chimera/AggressivePolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 123
    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    .line 126
    :goto_5a
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->registerSystemEventListener()V

    .line 128
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v0, "ChimeraManager"

    const-string v1, "Chimera instance created"

    invoke-interface {p0, v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    if-eqz p2, :cond_1e8

    .line 136
    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_1e8

    :cond_7
    const/4 v0, 0x0

    .line 140
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Chimera enabled: true"

    if-eqz v1, :cond_19

    .line 142
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d5

    .line 143
    :cond_19
    array-length v1, p2

    if-lez v1, :cond_1d5

    .line 144
    aget-object v0, p2, v0

    const-string/jumbo v1, "info"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 147
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_2c
    const-string/jumbo v1, "standby"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 149
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraAppManager;->dumpStandbyBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_40
    const-string/jumbo v1, "use_bg_keeping_policy"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "true"

    const/4 v3, 0x1

    if-eqz v1, :cond_82

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chimera set ConservativePolicy mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    aget-object v0, p2, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result v1

    if-eq v0, v1, :cond_1d5

    .line 154
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1, v0}, Lcom/android/server/chimera/SettingRepository;->enableConservativeMode(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener()V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto/16 :goto_1d5

    :cond_82
    const-string v1, "enable_swap"

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chimera enable swap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    aget-object v0, p2, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isSwapEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1d5

    .line 162
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1, v0}, Lcom/android/server/chimera/SettingRepository;->enableSwap(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto/16 :goto_1d5

    :cond_bf
    const-string/jumbo v1, "reclaim_cache"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v4, "off"

    const-string/jumbo v5, "on"

    if-eqz v1, :cond_fd

    .line 167
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    aget-object v1, p2, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SettingRepository;->enableReclaimPageCache(Z)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reclaim_cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_f1

    move-object v4, v5

    :cond_f1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_fd
    const-string v1, "gc"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 170
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    aget-object v1, p2, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SettingRepository;->enableGc(Z)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsGcenable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v1

    if-eqz v1, :cond_128

    move-object v4, v5

    :cond_128
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_134
    const-string v1, "enable_idle_kill"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chimera enable idle kill: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    aget-object v0, p2, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isIdleKillEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1d5

    .line 176
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1, v0}, Lcom/android/server/chimera/SettingRepository;->enableIdleKill(Z)V

    if-nez v0, :cond_173

    .line 178
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    goto :goto_1d5

    .line 180
    :cond_173
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    goto :goto_1d5

    :cond_17b
    const-string v1, "enable_quick_reclaim"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chimera enable quick reclaim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    aget-object v0, p2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v1

    if-eq v0, v1, :cond_1d5

    .line 187
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1, v0}, Lcom/android/server/chimera/SettingRepository;->enableQuickReclaim(Z)V

    if-eqz v0, :cond_1c2

    .line 189
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntent()V

    goto :goto_1d5

    .line 193
    :cond_1c2
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntent()V

    .line 201
    :cond_1d5
    :goto_1d5
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    if-eqz v0, :cond_1e1

    .line 204
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/SwapManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 207
    :cond_1e1
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    if-eqz p0, :cond_1e8

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/PolicyHandler;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1e8
    :goto_1e8
    return-void
.end method

.method public getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;-><init>()V

    .line 216
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraDataInfo;

    return-object p0
.end method

.method public getSettingRepository()Lcom/android/server/chimera/SettingRepository;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    return-object p0
.end method

.method public getSystemRepository()Lcom/android/server/chimera/SystemRepository;
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    const-string p0, "2.0"

    return-object p0
.end method

.method public onMediaScanFinished()V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "ChimeraManager"

    const-string/jumbo v2, "onMediaScanFinished() to start the policy "

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->initialize()V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    return-void
.end method

.method public final registerSystemEventListener()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addBottleNeckHintListener(Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addPmmCriticalListener(Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addPmmStateChangeListener(Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addLmkdEventListener(Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addCarModeChangeListener(Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 60
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntent()V

    .line 65
    :cond_3e
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    if-eqz v0, :cond_4f

    .line 66
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v1, v0}, Lcom/android/server/chimera/SystemEventListener;->addHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;)V

    goto :goto_56

    .line 69
    :cond_4f
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 72
    :goto_56
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isIdleKillEnabled()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 73
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/SystemEventListener;->addDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    :cond_65
    return-void
.end method

.method public final unRegisterSystemEventListener()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeBottleNeckHintListener(Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removePmmCriticalListener(Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removePmmStateChangeListener(Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeLmkdEventListener(Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeCarModeChangeListener(Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    if-eqz v0, :cond_34

    .line 86
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v1, v0}, Lcom/android/server/chimera/SystemEventListener;->removeHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSwapManager:Lcom/android/server/chimera/SwapManager;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchListener;)V

    goto :goto_3b

    .line 89
    :cond_34
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 92
    :goto_3b
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isIdleKillEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 93
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    .line 96
    :cond_4a
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 97
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 99
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntent()V

    :cond_65
    return-void
.end method
