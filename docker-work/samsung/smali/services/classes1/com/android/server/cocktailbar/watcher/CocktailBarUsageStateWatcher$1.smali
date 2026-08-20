.class public Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "CocktailBarUsageStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->registerUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mHideEdgeServiceComponentCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 70
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p2}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmLock(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    if-nez p1, :cond_15

    .line 169
    :try_start_9
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "pauseComponentName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit p2

    return-void

    .line 172
    :cond_15
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p4

    .line 174
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 176
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "pausePackageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    monitor-exit p2

    return-void

    .line 180
    :cond_2b
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmListener(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onNotePauseComponent(Landroid/content/ComponentName;)V

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_76

    .line 183
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notePauseComponent: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_76
    iget-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-nez p1, :cond_92

    .line 188
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_92

    .line 189
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmListener(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangeVisibleEdgeService(Z)V

    .line 190
    iput-boolean p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    .line 193
    :cond_92
    monitor-exit p2

    return-void

    :catchall_94
    move-exception p0

    monitor-exit p2
    :try_end_96
    .catchall {:try_start_9 .. :try_end_96} :catchall_94

    throw p0
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p2}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmLock(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    if-nez p1, :cond_15

    .line 77
    :try_start_9
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resumeComponentName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    monitor-exit p2

    return-void

    .line 81
    :cond_15
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_27

    .line 83
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resumePackageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    monitor-exit p2

    return-void

    .line 87
    :cond_27
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmListener(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onNoteResumeComponent(Landroid/content/ComponentName;)V

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v2}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 93
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_59

    .line 95
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_59

    .line 96
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 101
    :cond_59
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmLevel(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v1

    const/4 v4, 0x1

    and-int/2addr v1, v4

    const/4 v5, 0x0

    if-eqz v1, :cond_130

    .line 102
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmPackageHideEdgeServiceList(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v6, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v6}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b2

    .line 106
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "noteResumeComponent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v6, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v6}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    move v1, v5

    goto :goto_b5

    :cond_b4
    move v1, v4

    :goto_b5
    if-eqz v1, :cond_12f

    .line 111
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_12f

    .line 112
    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p4}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmActivityManager(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/app/ActivityManager;

    move-result-object p4

    .line 113
    invoke-virtual {p4, v4, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_12f

    .line 114
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_12f

    .line 115
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 116
    iget-object v3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmPackageHideEdgeServiceList(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_12f

    .line 117
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 118
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    .line 119
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteResumeComponent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12d
    move v4, v5

    goto :goto_130

    :cond_12f
    move v4, v1

    :cond_130
    :goto_130
    if-eqz v4, :cond_20e

    .line 128
    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p4}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmLevel(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result p4

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_20e

    .line 129
    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_18d

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_18a

    .line 132
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "noteResumeComponent: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18a
    .catchall {:try_start_9 .. :try_end_18a} :catchall_22d

    :cond_18a
    :goto_18a
    move v4, v5

    goto/16 :goto_20e

    :cond_18d
    const/16 p4, 0x80

    .line 138
    :try_start_18f
    invoke-virtual {v2, p1, p4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    .line 139
    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p4, :cond_1a2

    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmMetaDataHideEdgeService(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    goto :goto_1a3

    :cond_1a2
    move p4, v5

    :goto_1a3
    if-eqz p4, :cond_20e

    .line 141
    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 143
    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p4}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_18a

    .line 144
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteResumeComponent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p4}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18f .. :try_end_1f0} :catch_1f1
    .catchall {:try_start_18f .. :try_end_1f0} :catchall_22d

    goto :goto_18a

    :catch_1f1
    move-exception p3

    .line 150
    :try_start_1f2
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "noteResumeComponent: getActivityInfo not found. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 156
    :cond_20e
    :goto_20e
    iget-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-eqz p1, :cond_22b

    if-nez v4, :cond_22b

    .line 157
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22b

    .line 158
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmListener(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangeVisibleEdgeService(Z)V

    .line 159
    iput-boolean v5, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    .line 162
    :cond_22b
    monitor-exit p2

    return-void

    :catchall_22d
    move-exception p0

    monitor-exit p2
    :try_end_22f
    .catchall {:try_start_1f2 .. :try_end_22f} :catchall_22d

    throw p0
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p2}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmLock(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    if-nez p1, :cond_15

    .line 200
    :try_start_9
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stopComponentName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit p2

    return-void

    .line 204
    :cond_15
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p4

    .line 206
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 208
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stopPackageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit p2

    return-void

    .line 212
    :cond_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6d

    .line 214
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "noteStopComponent: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_6d
    iget-boolean p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-nez p1, :cond_89

    .line 219
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmComponentsToHideEdge(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 220
    iget-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {p1}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->-$$Nest$fgetmListener(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangeVisibleEdgeService(Z)V

    .line 221
    iput-boolean p3, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    .line 224
    :cond_89
    monitor-exit p2

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit p2
    :try_end_8d
    .catchall {:try_start_9 .. :try_end_8d} :catchall_8b

    throw p0
.end method
