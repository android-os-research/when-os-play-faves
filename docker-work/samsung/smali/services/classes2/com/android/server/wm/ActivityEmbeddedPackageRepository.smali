.class public Lcom/android/server/wm/ActivityEmbeddedPackageRepository;
.super Ljava/lang/Object;
.source "ActivityEmbeddedPackageRepository.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityEmbeddedPackageRepository"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public final mRepository:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;-><init>(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    .line 49
    monitor-exit p0

    return p1

    .line 51
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_14

    const/4 p1, 0x1

    .line 52
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public allowSystemOverride(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 69
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_12

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :catch_12
    :cond_12
    return v0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "    "

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ActivityEmbeddedPackageRepository : "

    .line 135
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "Empty"

    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_4b

    .line 138
    monitor-exit p0

    return-void

    .line 140
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 141
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "    "

    .line 143
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    "

    .line 144
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_4b

    goto :goto_2c

    .line 148
    :cond_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getActivityEmbeddedPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadActivityEmbeddedPackages()V
    .registers 8

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "ActivityEmbeddedPackageRepository"

    const-string v0, "PackageManager is not ready yet."

    .line 79
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 85
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->allowSystemOverride(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 86
    iget-object v3, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    .line 87
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v3

    .line 86
    invoke-virtual {v4, v5, v6, v3, v1}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(Ljava/lang/String;IIZ)V

    .line 88
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->add(Ljava/lang/String;)Z

    goto :goto_23

    :cond_4b
    return-void
.end method

.method public registerActivityEmbeddedPackageReceiver()V
    .registers 5

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    if-nez v0, :cond_c

    const/4 p1, 0x0

    .line 57
    monitor-exit p0

    return p1

    .line 59
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_14

    const/4 p1, 0x1

    .line 60
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
