.class public Lcom/android/server/wm/PackageSettingsManager;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageSettingsManager$LazyHolder;
    }
.end annotation


# instance fields
.field public final mAllPackagesChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/PackagesChange;",
            ">;"
        }
    .end annotation
.end field

.field public final mAllPackagesChangeAsTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/PackagesChangeAsTask;",
            ">;"
        }
    .end annotation
.end field

.field public final mCachedHomeActivities:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChange:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChangeAsTask:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager;->mCachedHomeActivities:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/PackageSettingsManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/PackageSettingsManager;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/wm/PackageSettingsManager$LazyHolder;->sPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    return-object v0
.end method


# virtual methods
.method public addPackagesChange(Lcom/android/server/wm/PackagesChange;)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPolicyAsTask(Lcom/android/server/wm/PackagesChangeAsTask;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChangeAsTask:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dumpAll(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 78
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PACKAGE SETTINGS MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChange:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/PackagesChange;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/PackagesChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2e

    .line 85
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PACKAGE SETTINGS MANAGER - USER CHANGES"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/PackagesChange;

    .line 87
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/PackagesChange;->dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_7b

    .line 89
    :cond_8b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public executeAllShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5

    .line 94
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PackagesChange;

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/PackagesChange;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChangeAsTask:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PackagesChangeAsTask;

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/PackagesChangeAsTask;->onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public resetAllIfNeeded(II)V
    .registers 4

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChange:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PackagesChange;

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PackagesChange;->resetIfNeeded(II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public updateValuesToTask(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 60
    iget-object p0, p0, Lcom/android/server/wm/PackageSettingsManager;->mAllPackagesChangeAsTask:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PackagesChangeAsTask;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTask(Lcom/android/server/wm/Task;Z)V

    goto :goto_6

    :cond_17
    return-void
.end method
