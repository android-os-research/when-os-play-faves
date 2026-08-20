.class public Lcom/android/server/ssrm/fgapps/GameAppUtils;
.super Ljava/lang/Object;
.source "GameAppUtils.java"


# static fields
.field private static gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;


# instance fields
.field private sLowPowerGames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->sLowPowerGames:Ljava/util/HashSet;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x14

    new-array v2, v1, [I

    fill-array-data v2, :array_88

    .line 29
    invoke-direct {p0, v2}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x17

    new-array v4, v2, [I

    fill-array-data v4, :array_b4

    .line 33
    invoke-direct {p0, v4}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_e6

    .line 38
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_112

    .line 43
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_14c

    .line 48
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_162

    .line 52
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_194

    .line 57
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x1a

    new-array v1, v1, [I

    fill-array-data v1, :array_1c2

    .line 62
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 67
    .local v0, "gamelist":[Ljava/lang/String;
    array-length v1, v0

    :goto_7b
    if-ge v3, v1, :cond_87

    aget-object v2, v0, v3

    .line 68
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->sLowPowerGames:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 70
    :cond_87
    return-void

    :array_88
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    :array_b4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
        0x8
        0x13
        0x15
    .end array-data

    :array_e6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    :array_112
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_14c
    .array-data 4
        0x10
        0xa
        0x54
        0x19
        0x15
        0x16
        0x15
        0xa
        0x16
    .end array-data

    :array_162
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x19
        0x1b
        0x14
        0x1e
        0x3
        0x19
        0x8
        0xf
        0x9
        0x12
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data

    :array_194
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    :array_1c2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xf
        0xa
        0x1f
        0x8
        0x19
        0x1f
        0x16
        0x16
        0x54
        0x19
        0x16
        0x1b
        0x9
        0x12
        0x15
        0x1c
        0x19
        0x16
        0x1b
        0x14
        0x9
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ssrm/fgapps/GameAppUtils;
    .registers 2

    const-class v0, Lcom/android/server/ssrm/fgapps/GameAppUtils;

    monitor-enter v0

    .line 20
    :try_start_3
    sget-object v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    if-nez v1, :cond_e

    .line 21
    new-instance v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;

    invoke-direct {v1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;

    .line 23
    :cond_e
    sget-object v1, Lcom/android/server/ssrm/fgapps/GameAppUtils;->gameAppUtils:Lcom/android/server/ssrm/fgapps/GameAppUtils;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isLowPowerGameApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameAppUtils;->sLowPowerGames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private x([I)Ljava/lang/String;
    .registers 3
    .param p1, "raw"    # [I

    .line 95
    invoke-static {p1}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isGame(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "gms":Lcom/samsung/android/game/IGameManagerService;
    :try_start_1
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 80
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_c

    .line 81
    invoke-static {v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    move-object v0, v2

    .line 83
    :cond_c
    if-eqz v0, :cond_18

    .line 84
    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_19

    .line 85
    .local v2, "ret":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    return v3

    .line 89
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "ret":I
    :cond_18
    goto :goto_1d

    .line 87
    :catch_19
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/GameAppUtils;->isLowPowerGameApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
