.class public Lcom/samsung/android/server/audio/AppCategorizer;
.super Ljava/lang/Object;
.source "AppCategorizer.java"


# instance fields
.field public final appList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/AudioSettingsHelper;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/server/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_d
    iget-object p0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getPackageList()Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 33
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw p0
.end method


# virtual methods
.method public checkExist(Ljava/lang/String;)Z
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSelectedPackages()[Ljava/lang/String;
    .registers 2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public putPackage(ILjava/lang/String;)V
    .registers 5

    .line 38
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/AppCategorizer;->checkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putPackage(ILjava/lang/String;)V

    return-void
.end method

.method public removePackage(I)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/AppCategorizer;->appList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/audio/AppCategorizer;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->removePackage(I)V

    .line 53
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
