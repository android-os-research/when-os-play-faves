.class public Lcom/android/server/ssrm/SortingMachine;
.super Ljava/lang/Object;
.source "SortingMachine.java"


# static fields
.field public static final CATEGORY_MAX:I = 0x2

.field public static final CATEGORY_PRELOAD:I = 0x0

.field public static final CATEGORY_TORRENT:I = 0x1

.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/ssrm/SortingMachine;

.field private static sPreloadUidTables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmTables(Lcom/android/server/ssrm/SortingMachine;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterTorrentPackages(Lcom/android/server/ssrm/SortingMachine;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/SortingMachine;->registerTorrentPackages(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-class v0, Lcom/android/server/ssrm/SortingMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->sPreloadUidTables:Ljava/util/Hashtable;

    .line 60
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/SortingMachine;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    .line 85
    new-instance v1, Lcom/android/server/ssrm/SortingMachine$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/SortingMachine$1;-><init>(Lcom/android/server/ssrm/SortingMachine;)V

    iput-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    const/4 v3, 0x2

    if-ge v2, v3, :cond_42

    .line 78
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 81
    .end local v2    # "i":I
    :cond_42
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SortingMachine;->registerTorrentPackages(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/ssrm/SortingMachine;->registerPreloadPackages()V

    .line 83
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/android/server/ssrm/SortingMachine;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/SortingMachine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    .line 66
    :cond_b
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sInstance:Lcom/android/server/ssrm/SortingMachine;

    return-object v0
.end method

.method public static isPreloadAppUid(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 209
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sPreloadUidTables:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 210
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_13

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0

    .line 212
    :cond_15
    sget-object v0, Lcom/android/server/ssrm/SortingMachine;->sPreloadUidTables:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerPreloadPackages(Ljava/util/List;Ljava/util/Hashtable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p2, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 174
    return-void

    .line 176
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 177
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_18

    .line 179
    goto :goto_7

    .line 181
    :cond_18
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 182
    .local v3, "packageName":Ljava/lang/String;
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_34

    .line 183
    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 184
    invoke-virtual {p2, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_29
    sget-object v4, Lcom/android/server/ssrm/SortingMachine;->sPreloadUidTables:Ljava/util/Hashtable;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_34
    goto :goto_7

    .line 189
    :cond_35
    return-void
.end method

.method private registerTorrentPackages(Ljava/lang/String;)V
    .registers 10
    .param p1, "newPackageName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 115
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 117
    .local v1, "torrentTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v3, "http://*/.*\\.torrent"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    const-string v3, "magnet://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    if-eqz p1, :cond_32

    .line 122
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :cond_32
    const/16 v3, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 128
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 129
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5d
    goto :goto_3c

    .line 133
    :cond_5e
    return-void
.end method


# virtual methods
.method public isGame(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "gms":Lcom/samsung/android/game/IGameManagerService;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 158
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_d

    .line 159
    invoke-static {v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v3

    move-object v0, v3

    .line 161
    :cond_d
    if-eqz v0, :cond_18

    .line 162
    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_19

    .line 163
    .local v3, "ret":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    move v1, v4

    :cond_17
    return v1

    .line 167
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "ret":I
    :cond_18
    goto :goto_1d

    .line 165
    :catch_19
    move-exception v2

    .line 166
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d
    return v1
.end method

.method public isPreloadApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 147
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    if-nez p1, :cond_e

    goto :goto_13

    .line 151
    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 148
    :cond_13
    :goto_13
    return v1
.end method

.method public isTorrentApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 137
    .local v0, "torrentTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    if-nez p1, :cond_e

    goto :goto_13

    .line 141
    :cond_e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 138
    :cond_13
    :goto_13
    const/4 v1, 0x0

    return v1
.end method

.method registerPreloadPackages()V
    .registers 11

    .line 192
    iget-object v0, p0, Lcom/android/server/ssrm/SortingMachine;->mTables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 193
    .local v0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 194
    return-void

    .line 197
    :cond_c
    sget-object v2, Lcom/android/server/ssrm/SortingMachine;->sPreloadUidTables:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 199
    iget-object v2, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 200
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/server/ssrm/SortingMachine;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 201
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 202
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 203
    .local v6, "ui":Landroid/content/pm/UserInfo;
    sget-object v7, Lcom/android/server/ssrm/SortingMachine;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerPreloadPackages:: additional uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/android/server/ssrm/SortingMachine;->registerPreloadPackages(Ljava/util/List;Ljava/util/Hashtable;)V

    .line 205
    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_29

    .line 206
    :cond_59
    return-void
.end method
