.class public Lcom/android/server/wm/HighRefreshRateDenylist;
.super Ljava/lang/Object;
.source "HighRefreshRateDenylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;
    }
.end annotation


# instance fields
.field public final mDefaultDenylist:[Ljava/lang/String;

.field public final mDenylistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateDenylist(Lcom/android/server/wm/HighRefreshRateDenylist;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist;->updateDenylist(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/provider/DeviceConfigInterface;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    const v0, 0x10700e1

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDefaultDenylist:[Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateDenylist;Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener-IA;)V

    const-string v1, "display_manager"

    .line 51
    invoke-interface {p2, v1, p1, v0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string p1, "high_refresh_rate_blacklist"

    .line 53
    invoke-interface {p2, v1, p1}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist;->updateDenylist(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/wm/HighRefreshRateDenylist;
    .registers 3

    .line 45
    new-instance v0, Lcom/android/server/wm/HighRefreshRateDenylist;

    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/HighRefreshRateDenylist;-><init>(Landroid/content/res/Resources;Landroid/provider/DeviceConfigInterface;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "High Refresh Rate Denylist"

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Packages:"

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_d
    iget-object p0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 91
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_36

    throw p0
.end method

.method public isDenylisted(Ljava/lang/String;)Z
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final updateDenylist(Ljava/lang/String;)V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    const-string v2, ","

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 63
    array-length v2, p1

    :goto_12
    if-ge v1, v2, :cond_37

    aget-object v3, p1, v1

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 66
    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 72
    :cond_28
    iget-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDefaultDenylist:[Ljava/lang/String;

    array-length v2, p1

    :goto_2b
    if-ge v1, v2, :cond_37

    aget-object v3, p1, v1

    .line 73
    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 76
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method
