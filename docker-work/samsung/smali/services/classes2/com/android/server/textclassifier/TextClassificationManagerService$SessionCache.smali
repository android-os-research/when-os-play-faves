.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionCache"
.end annotation


# static fields
.field public static final MAX_CACHE_SIZE:I = 0x64


# instance fields
.field public final mCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeathRecipients:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$XLvrJbfQ_042X2S26Y-uabAc2Po(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->lambda$put$0(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    .line 683
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$put$0(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 2

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/textclassifier/TextClassificationSessionId;)Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
    .registers 3

    .line 709
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_6
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 712
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public put(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 6

    .line 694
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    invoke-direct {v2, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;-><init>(Landroid/view/textclassifier/TextClassificationContext;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    .line 698
    :try_start_d
    new-instance p2, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 699
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 700
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20
    .catchall {:try_start_d .. :try_end_1f} :catchall_2a

    goto :goto_28

    :catch_20
    move-exception p0

    :try_start_21
    const-string p1, "TextClassificationManagerService"

    const-string p2, "SessionCache: Failed to link to death"

    .line 702
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public remove(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 6

    .line 716
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_6
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_18

    .line 720
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 722
    :cond_18
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public size()I
    .registers 2

    .line 728
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 730
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method
