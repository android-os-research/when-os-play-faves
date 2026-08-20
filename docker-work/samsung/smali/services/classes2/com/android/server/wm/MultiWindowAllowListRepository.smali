.class public Lcom/android/server/wm/MultiWindowAllowListRepository;
.super Ljava/lang/Object;
.source "MultiWindowAllowListRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowAllowListRepository$H;
    }
.end annotation


# instance fields
.field public final mAllowPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mH:Lcom/android/server/wm/MultiWindowAllowListRepository$H;

.field public final mPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPolicyController(Lcom/android/server/wm/MultiWindowAllowListRepository;)Lcom/android/server/wm/MultiWindowSupportPolicyController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/MultiWindowSupportPolicyController;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/wm/MultiWindowAllowListRepository$1;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_MULTI_WINDOW:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiWindowAllowListRepository$1;-><init>(Lcom/android/server/wm/MultiWindowAllowListRepository;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 78
    monitor-exit v0

    return-void

    .line 80
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAllowListRepository;->update()V

    .line 82
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 110
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiWindowAllowListRepository;->dumpDebug(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_b

    .line 113
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowAllowListRepository;->dumpRelease(Ljava/io/PrintWriter;)V

    :goto_b
    return-void
.end method

.method public dumpDebug(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    const-string v1, "AllowList : "

    .line 125
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p0, "Empty"

    .line 127
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_17
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 133
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 135
    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_3f

    .line 136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3f
    const-string v2, " "

    .line 139
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_24

    .line 141
    :cond_45
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 142
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public dumpRelease(Ljava/io/PrintWriter;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 119
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W Total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getAllowList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 105
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public initialize()V
    .registers 3

    .line 54
    new-instance v0, Lcom/android/server/wm/MultiWindowAllowListRepository$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiWindowAllowListRepository$H;-><init>(Lcom/android/server/wm/MultiWindowAllowListRepository;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mH:Lcom/android/server/wm/MultiWindowAllowListRepository$H;

    return-void
.end method

.method public isAllowApp(Ljava/lang/String;)Z
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mAllowPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAllowListRepository;->update()V

    .line 89
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public update()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mH:Lcom/android/server/wm/MultiWindowAllowListRepository$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository;->mH:Lcom/android/server/wm/MultiWindowAllowListRepository$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
