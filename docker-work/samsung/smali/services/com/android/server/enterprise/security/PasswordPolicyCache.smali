.class public Lcom/android/server/enterprise/security/PasswordPolicyCache;
.super Ljava/lang/Object;
.source "PasswordPolicyCache.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/enterprise/security/PasswordPolicyCache;


# instance fields
.field public mChangeRequested:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicyCache;

    invoke-direct {v0}, Lcom/android/server/enterprise/security/PasswordPolicyCache;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->INSTANCE:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/security/PasswordPolicyCache;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->INSTANCE:Lcom/android/server/enterprise/security/PasswordPolicyCache;

    return-object v0
.end method


# virtual methods
.method public isChangeRequestedAsUser(I)I
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 p0, 0x0

    goto :goto_21

    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_21
    monitor-exit v0

    return p0

    :catchall_23
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public setChangeRequestedAsUser(II)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicyCache;->mChangeRequested:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method
