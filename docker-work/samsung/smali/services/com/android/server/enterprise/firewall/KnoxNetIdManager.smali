.class public Lcom/android/server/enterprise/firewall/KnoxNetIdManager;
.super Ljava/lang/Object;
.source "KnoxNetIdManager.java"


# static fields
.field public static final MAX_NET_ID:I = 0xfbfe

.field public static final MIN_NET_ID:I = 0x9c40

.field public static final TUN_INTF_NETID_RANGE:I = 0x400


# instance fields
.field public mLastNetId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetIdInUse"
        }
    .end annotation
.end field

.field public final mMinNetId:I

.field public final mNetIdInUse:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetIdInUse"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x9c40

    .line 31
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const v0, 0xfbfe

    .line 25
    iput v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    .line 36
    iput p1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mMinNetId:I

    return-void
.end method


# virtual methods
.method public final getNextAvailableNetIdLocked(ILandroid/util/SparseBooleanArray;)I
    .registers 6

    const v0, 0xfbfe

    move v1, v0

    .line 45
    :goto_4
    iget v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mMinNetId:I

    if-lt v1, v2, :cond_18

    if-le p1, v2, :cond_d

    add-int/lit8 p1, p1, -0x1

    goto :goto_e

    :cond_d
    move p1, v0

    .line 47
    :goto_e
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_15

    return p1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 51
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No free netIds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseNetId(I)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reserveNetId()I
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 59
    :try_start_3
    iget v1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->getNextAvailableNetIdLocked(ILandroid/util/SparseBooleanArray;)I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    .line 61
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 62
    iget p0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method
