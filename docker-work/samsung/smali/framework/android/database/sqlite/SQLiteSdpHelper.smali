.class public Landroid/database/sqlite/SQLiteSdpHelper;
.super Ljava/lang/Object;
.source "SQLiteSdpHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteSdpHelper"

.field private static final blacklist mIsSdpSupported:Z = false

.field private static blacklist sService:Lcom/samsung/android/knox/dar/IDarManagerService;


# instance fields
.field private blacklist mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklist mEngineId:I

.field private blacklist mIsInitialized:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDatabase(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    iget-object p0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    .line 23
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    .line 28
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    return-void
.end method

.method private static declared-synchronized blacklist getDarService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .registers 2

    const-class v0, Landroid/database/sqlite/SQLiteSdpHelper;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v1, :cond_13

    .line 68
    const-string v1, "dar"

    .line 69
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v1

    sput-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 71
    :cond_13
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getEngineId()I
    .registers 6

    .line 75
    const-wide/16 v0, -0x1

    .line 77
    .local v0, "ret":J
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_16

    .line 78
    const-string v3, "PRAGMA sdp_get_engine_id;"

    const/4 v4, 0x0

    .line 79
    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    int-to-long v0, v2

    .line 83
    :cond_16
    goto :goto_1b

    .line 81
    :catch_17
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1b
    long-to-int v2, v0

    return v2
.end method

.method private blacklist prepare()V
    .registers 1

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist registerListener()V
    .registers 5

    .line 88
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V

    .line 90
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_6
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_c

    .line 92
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3b

    return-void

    .line 96
    :cond_c
    :try_start_c
    const-string v1, "SQLiteSdpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener() - Engine Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService;->registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_30} :catch_31
    .catchall {:try_start_c .. :try_end_30} :catchall_3b

    .line 100
    goto :goto_39

    .line 98
    :catch_31
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v2, "SQLiteSdpHelper"

    const-string v3, "RemoteException from registerClient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist unregisterListener()V
    .registers 5

    .line 105
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_9

    .line 107
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    return-void

    .line 111
    :cond_9
    :try_start_9
    const-string v1, "SQLiteSdpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterListener() - Engine Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Lcom/samsung/android/knox/dar/IDarManagerService;

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/dar/IDarManagerService;->unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2d} :catch_2e
    .catchall {:try_start_9 .. :try_end_2d} :catchall_38

    .line 115
    goto :goto_36

    .line 113
    :catch_2e
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string v2, "SQLiteSdpHelper"

    const-string v3, "RemoteException from unregisterClient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_38

    throw v1
.end method
