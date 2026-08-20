.class public Lcom/android/server/ssrm/fgapps/TopAppManager;
.super Ljava/lang/Object;
.source "TopAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;
    }
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field focusTopAppPid:I

.field private launcherPid:I

.field private final mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field private mProcessThreadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTopAppProcessSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessThreadMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mTopAppProcessSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidPidMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mUidPidMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V
    .registers 5
    .param p1, "cfms"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mTopAppProcessSet:Ljava/util/HashSet;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mUidPidMap:Ljava/util/HashMap;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->focusTopAppPid:I

    .line 69
    iput v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->launcherPid:I

    .line 30
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 33
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 34
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_2d

    .line 35
    new-instance v1, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;-><init>(Lcom/android/server/ssrm/fgapps/TopAppManager;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2e

    .line 39
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_2d
    goto :goto_32

    .line 37
    :catch_2e
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method


# virtual methods
.method public addProcessThread(IILjava/lang/String;)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 149
    if-gez p2, :cond_3

    .line 150
    return-void

    .line 153
    :cond_3
    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "splitNames":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_11

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_12

    :cond_11
    move-object v1, p3

    .line 155
    .local v1, "originName":Ljava/lang/String;
    :goto_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 156
    return-void

    .line 159
    :cond_21
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 160
    :try_start_24
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 161
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_41

    .line 162
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 163
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_41
    if-eqz v3, :cond_4a

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4a
    monitor-exit v2

    .line 170
    return-void

    .line 169
    :catchall_4c
    move-exception v3

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_4c

    throw v3
.end method

.method public addProcessThreadWithDuplicatedName(IILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 176
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_59

    .line 177
    if-eqz v1, :cond_55

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_55

    .line 182
    :cond_19
    const/4 v0, 0x1

    .line 183
    .local v0, "idx":I
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 187
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 188
    return-void

    .line 178
    .end local v0    # "idx":I
    :cond_55
    :goto_55
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/TopAppManager;->addProcessThread(IILjava/lang/String;)V

    .line 179
    return-void

    .line 176
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public getCurrentTopAppPids()Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 81
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mTopAppProcessSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 82
    :try_start_8
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mTopAppProcessSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 83
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 86
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1e
    monitor-exit v1

    .line 87
    return-object v0

    .line 86
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getFocusTopAppPid()I
    .registers 7

    .line 45
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getCurrentTopAppPids()Ljava/util/Vector;

    move-result-object v0

    .line 47
    .local v0, "topPids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v1, ""

    .line 48
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 49
    .local v3, "id":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .end local v3    # "id":I
    goto :goto_a

    .line 52
    :cond_32
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 56
    :cond_45
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 57
    .local v3, "pid":I
    iget v4, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->focusTopAppPid:I

    if-ne v4, v3, :cond_5e

    .line 58
    return v3

    .line 60
    .end local v3    # "pid":I
    :cond_5e
    goto :goto_49

    .line 62
    :cond_5f
    const/4 v2, -0x1

    return v2
.end method

.method public getLauncherPid()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->launcherPid:I

    return v0
.end method

.method public getProcessThread(ILjava/lang/String;)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 99
    .local v1, "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    .line 100
    const/4 v0, -0x1

    if-nez v1, :cond_14

    .line 101
    return v0

    .line 104
    :cond_14
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 105
    .local v2, "threadHashResult":Ljava/lang/Integer;
    if-nez v2, :cond_1d

    .line 106
    return v0

    .line 109
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 99
    .end local v1    # "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "threadHashResult":Ljava/lang/Integer;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getProcessThread(I)Ljava/util/Vector;
    .registers 3
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getProcessThreadContainName(ILjava/lang/String;)Ljava/util/Vector;
    .registers 9
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 116
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_56

    if-gez p1, :cond_a

    goto :goto_56

    .line 120
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 123
    .local v1, "skipNameChecking":Z
    :goto_13
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 124
    :try_start_16
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->mProcessThreadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 125
    .local v3, "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_53

    .line 127
    if-nez v3, :cond_26

    .line 128
    return-object v0

    .line 131
    :cond_26
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "key":Ljava/lang/String;
    if-nez v4, :cond_3d

    .line 133
    goto :goto_2e

    .line 135
    :cond_3d
    if-nez v1, :cond_46

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 136
    goto :goto_2e

    .line 139
    :cond_46
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 140
    .local v5, "threadId":Ljava/lang/Integer;
    if-eqz v5, :cond_51

    .line 141
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "threadId":Ljava/lang/Integer;
    :cond_51
    goto :goto_2e

    .line 145
    :cond_52
    return-object v0

    .line 125
    .end local v3    # "processHashresult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v3

    .line 117
    .end local v1    # "skipNameChecking":Z
    :cond_56
    :goto_56
    return-object v0
.end method

.method public setFocusTopAppPid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 66
    iput p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->focusTopAppPid:I

    .line 67
    return-void
.end method

.method public setLauncherPid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 71
    iput p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager;->launcherPid:I

    .line 72
    return-void
.end method
