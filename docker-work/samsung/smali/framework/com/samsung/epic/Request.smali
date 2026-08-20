.class public Lcom/samsung/epic/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "EpicRequest"

.field private static blacklist mEpicManager:Landroid/os/epic/IEpicManager;

.field private static blacklist mHasLoad:Z


# instance fields
.field private blacklist mEpicObject:Landroid/os/epic/IEpicObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/epic/Request;->mHasLoad:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/samsung/epic/Request;->get_service()V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "scenario_id"    # I

    .line 22
    invoke-direct {p0}, Lcom/samsung/epic/Request;-><init>()V

    .line 25
    :try_start_3
    sget-object v0, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    invoke-interface {v0, p1}, Landroid/os/epic/IEpicManager;->Create(I)Landroid/os/epic/IEpicObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 29
    goto :goto_10

    .line 27
    :catch_c
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 4
    .param p1, "scenario_id_list"    # [I

    .line 34
    invoke-direct {p0}, Lcom/samsung/epic/Request;-><init>()V

    .line 37
    :try_start_3
    sget-object v0, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    invoke-interface {v0, p1}, Landroid/os/epic/IEpicManager;->Creates([I)Landroid/os/epic/IEpicObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 41
    goto :goto_10

    .line 39
    :catch_c
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method

.method private blacklist get_service()V
    .registers 4

    .line 138
    const-class v0, Lcom/samsung/epic/Request;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-boolean v1, Lcom/samsung/epic/Request;->mHasLoad:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_1b
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 141
    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_19

    return-void

    .line 143
    :cond_a
    :try_start_a
    const-string v1, "epic"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/epic/IEpicManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/epic/IEpicManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    .line 145
    sput-boolean v2, Lcom/samsung/epic/Request;->mHasLoad:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1b
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    .line 149
    goto :goto_1f

    .line 150
    :catchall_19
    move-exception v1

    goto :goto_21

    .line 147
    :catch_1b
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_1d
    sput-object v2, Lcom/samsung/epic/Request;->mEpicManager:Landroid/os/epic/IEpicManager;

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_19

    throw v1
.end method


# virtual methods
.method public blacklist acquire_lock()Z
    .registers 3

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_6

    .line 48
    return v0

    .line 51
    :cond_6
    :try_start_6
    invoke-interface {v1}, Landroid/os/epic/IEpicObject;->acquire_lock()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_c

    move v0, v1

    .line 54
    goto :goto_d

    .line 53
    :catch_c
    move-exception v1

    .line 56
    :goto_d
    return v0
.end method

.method public blacklist acquire_lock(II)Z
    .registers 5
    .param p1, "value"    # I
    .param p2, "usec"    # I

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_7

    .line 78
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_7
    :try_start_7
    invoke-interface {v1, p1, p2}, Landroid/os/epic/IEpicObject;->acquire_lock_option(II)Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v1

    .line 84
    goto :goto_e

    .line 83
    :catch_d
    move-exception v1

    .line 86
    :goto_e
    return v0
.end method

.method public blacklist acquire_lock([I[I)Z
    .registers 5
    .param p1, "value_list"    # [I
    .param p2, "usec_list"    # [I

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_7

    .line 93
    const/4 v1, 0x0

    return v1

    .line 96
    :cond_7
    :try_start_7
    invoke-interface {v1, p1, p2}, Landroid/os/epic/IEpicObject;->acquire_lock_option_multi([I[I)Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v1

    .line 99
    goto :goto_e

    .line 98
    :catch_d
    move-exception v1

    .line 101
    :goto_e
    return v0
.end method

.method public blacklist hint_release(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_7

    .line 125
    const/4 v1, 0x0

    return v1

    .line 128
    :cond_7
    :try_start_7
    invoke-interface {v1, p1}, Landroid/os/epic/IEpicObject;->hint_release(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v1

    .line 131
    goto :goto_e

    .line 130
    :catch_d
    move-exception v1

    .line 133
    :goto_e
    return v0
.end method

.method public blacklist perf_hint(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_7

    .line 109
    const/4 v1, 0x0

    return v1

    .line 112
    :cond_7
    :try_start_7
    invoke-interface {v1, p1}, Landroid/os/epic/IEpicObject;->perf_hint(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v1

    .line 115
    goto :goto_e

    .line 114
    :catch_d
    move-exception v1

    .line 117
    :goto_e
    return v0
.end method

.method public blacklist release_lock()Z
    .registers 3

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/epic/Request;->mEpicObject:Landroid/os/epic/IEpicObject;

    if-nez v1, :cond_7

    .line 63
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_7
    :try_start_7
    invoke-interface {v1}, Landroid/os/epic/IEpicObject;->release_lock()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move v0, v1

    .line 69
    goto :goto_e

    .line 68
    :catch_d
    move-exception v1

    .line 71
    :goto_e
    return v0
.end method
