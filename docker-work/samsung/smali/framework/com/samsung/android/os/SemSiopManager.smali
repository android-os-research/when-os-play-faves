.class public Lcom/samsung/android/os/SemSiopManager;
.super Ljava/lang/Object;
.source "SemSiopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_KEY_LIMITERS:Ljava/lang/String; = "SCENARIO_LIMITERS"

.field public static final blacklist BUNDLE_KEY_SCENARIO_NAME:Ljava/lang/String; = "SCENARIO_NAME"

.field static final blacklist DEBUG:Z = false

.field public static final whitelist ERROR_EXISTING_SCENARIO:I = -0x2

.field public static final whitelist ERROR_INIT_EXCEPTION:I = -0x4

.field public static final whitelist ERROR_NO_LIMITER:I = -0x3

.field public static final whitelist ERROR_NULL_SCENARIO:I = -0x1

.field public static final whitelist LIMITER_TYPE_BRIGHTNESS:I = 0x3

.field public static final whitelist LIMITER_TYPE_CHARGER_RATIO:I = 0x2

.field public static final whitelist LIMITER_TYPE_CPU_FREQUENCY:I = 0x0

.field public static final whitelist LIMITER_TYPE_GPU_FREQUENCY:I = 0x1

.field public static final whitelist NO_ERROR:I

.field static final blacklist TAG:Ljava/lang/String;

.field static blacklist mContext:Landroid/content/Context;

.field private static blacklist mExistingScenarioNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# instance fields
.field private blacklist mIsInitialized:Z

.field protected blacklist mLimiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScenarioName:Ljava/lang/String;

.field blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/samsung/android/os/SemSiopManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    .line 123
    sput-object p1, Lcom/samsung/android/os/SemSiopManager;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/samsung/android/os/SemSiopManager;->mToken:Landroid/os/IBinder;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method public static whitelist createInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)Lcom/samsung/android/os/SemSiopManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 111
    new-instance v0, Lcom/samsung/android/os/SemSiopManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/os/SemSiopManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method private static declared-synchronized blacklist getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 4

    const-class v0, Lcom/samsung/android/os/SemSiopManager;

    monitor-enter v0

    .line 364
    :try_start_3
    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_26

    .line 365
    const-string/jumbo v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 366
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_26

    .line 367
    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2a

    .line 368
    if-eqz v2, :cond_26

    .line 370
    :try_start_18
    new-instance v2, Lcom/samsung/android/os/SemSiopManager$1;

    invoke-direct {v2}, Lcom/samsung/android/os/SemSiopManager$1;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    .line 378
    goto :goto_26

    .line 376
    :catch_22
    move-exception v2

    .line 377
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 382
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 363
    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist acquireSiop()Z
    .registers 4

    .line 262
    iget-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 266
    return v1

    .line 269
    :cond_6
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_15

    .line 271
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->acquireSiop(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 278
    goto :goto_15

    .line 275
    :catch_10
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    return v1

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist addLimitation(III)Z
    .registers 8
    .param p1, "type"    # I
    .param p2, "temperature"    # I
    .param p3, "limitValue"    # I

    .line 161
    const/4 v0, 0x0

    if-ltz p1, :cond_63

    const/4 v1, 0x3

    if-le p1, v1, :cond_7

    goto :goto_63

    .line 167
    :cond_7
    const/16 v2, -0xc8

    if-lt p2, v2, :cond_62

    const/16 v2, 0x352

    if-gt p2, v2, :cond_62

    const/4 v2, -0x1

    if-lt p3, v2, :cond_62

    const/4 v2, 0x2

    if-ne p1, v2, :cond_19

    const/16 v2, 0x64

    if-gt p3, v2, :cond_62

    :cond_19
    if-ne p1, v1, :cond_20

    const/16 v1, 0xff

    if-le p3, v1, :cond_20

    goto :goto_62

    .line 176
    :cond_20
    const/4 v0, 0x0

    .line 177
    .local v0, "isAdded":Z
    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_50

    .line 178
    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    .line 179
    .local v2, "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    invoke-virtual {v2}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->getLimiterType()I

    move-result v3

    if-ne p1, v3, :cond_4f

    .line 180
    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    invoke-virtual {v3, p2, p3}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->addLimitation(II)V

    .line 184
    const/4 v0, 0x1

    .line 186
    .end local v2    # "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    :cond_4f
    goto :goto_31

    .line 188
    :cond_50
    if-nez v0, :cond_60

    .line 189
    new-instance v1, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    invoke-direct {v1, p1}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;-><init>(I)V

    .line 190
    .local v1, "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    nop

    .line 191
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->addLimitation(II)V

    .line 192
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v1    # "limiter":Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
    :cond_60
    const/4 v1, 0x1

    return v1

    .line 173
    .end local v0    # "isAdded":Z
    :cond_62
    :goto_62
    return v0

    .line 165
    :cond_63
    :goto_63
    return v0
.end method

.method public blacklist getLimiters()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getScenarioName()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist initializeSiopScenario()I
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 222
    const/4 v0, -0x1

    return v0

    .line 223
    :cond_6
    sget-object v1, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    const/4 v0, -0x2

    return v0

    .line 225
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1c

    goto :goto_6f

    .line 229
    :cond_1c
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_26

    .line 230
    invoke-static {}, Lcom/samsung/android/os/SemSiopManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 232
    :cond_26
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_64

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    :try_start_2b
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_41

    .line 235
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->makeAscendingOrder()V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 237
    .end local v0    # "i":I
    :cond_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "scenario":Landroid/os/Bundle;
    const-string v2, "SCENARIO_NAME"

    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "SCENARIO_LIMITERS"

    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mLimiters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 240
    sget-object v2, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v0, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->initializeSiopScenario(Landroid/os/Bundle;Landroid/os/IBinder;)V

    .line 241
    iput-boolean v1, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_5e

    .line 245
    .end local v0    # "scenario":Landroid/os/Bundle;
    goto :goto_64

    .line 242
    :catch_5e
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const/4 v1, -0x4

    return v1

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_6d

    .line 248
    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_6d
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_6f
    :goto_6f
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist releaseSiop()Z
    .registers 4

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 300
    return v1

    .line 303
    :cond_6
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_15

    .line 305
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->releaseSiop(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    .line 312
    goto :goto_15

    .line 309
    :catch_10
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    return v1

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist terminateSiopScenario()Z
    .registers 4

    .line 331
    iget-boolean v0, p0, Lcom/samsung/android/os/SemSiopManager;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 335
    return v1

    .line 338
    :cond_6
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v0, :cond_1e

    .line 340
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->terminateSiopScenario(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/samsung/android/os/SemSiopManager;->mExistingScenarioNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 342
    iget-object v2, p0, Lcom/samsung/android/os/SemSiopManager;->mScenarioName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    .line 350
    :cond_18
    goto :goto_1e

    .line 347
    :catch_19
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    return v1

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method
