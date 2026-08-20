.class public Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;
.super Ljava/lang/Object;
.source "ListScrollE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mIsListScroll:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized getListScrollAllValue()Z
    .registers 2

    monitor-enter p0

    .line 22
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;->mIsListScroll:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 22
    .end local p0    # "this":Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListScrollAllValue(Z)V
    .registers 2
    .param p1, "listscrollAllValue"    # Z

    monitor-enter p0

    .line 18
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;->mIsListScroll:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 19
    monitor-exit p0

    return-void

    .line 17
    .end local p0    # "this":Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;
    .end local p1    # "listscrollAllValue":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
