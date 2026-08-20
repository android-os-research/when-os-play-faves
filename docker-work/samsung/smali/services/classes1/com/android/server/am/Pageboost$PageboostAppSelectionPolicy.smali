.class public abstract Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PageboostAppSelectionPolicy"
.end annotation


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public mRecentPrefetchStrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1026
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1027
    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1028
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;I)Lcom/android/server/am/Pageboost$PageboostAppList;
.end method

.method public finalizePredict()V
    .registers 3

    .line 1032
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1033
    :try_start_4
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchStrs:Ljava/util/ArrayList;

    .line 1034
    iput-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;->mRecentPrefetchList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 1035
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public abstract judgePredict(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
.end method
