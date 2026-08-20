.class public Lcom/samsung/android/mcf/continuity/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "ContinuitySession"

.field public static final q:I = 0xa


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/impl/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/samsung/android/mcf/continuity/impl/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Landroid/util/ArrayMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lcom/samsung/android/mcf/continuity/impl/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile k:Lcom/samsung/android/mcf/continuity/impl/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile o:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3kKa0pRB1e5WGm6g-HgnJLK6b7Y(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9gmcIu5xacjvBbRt5TiKYEMKHjY(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DMh6Yh0HVcKU0ZxrQSSFZoRvBWY(Lcom/samsung/android/mcf/continuity/impl/o;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/o;->c(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRSAVZE5JDLXmJIeIXxug_ziZG0(Lcom/samsung/android/mcf/continuity/impl/o;ZLcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(ZLcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJBLcFSJHqlnLdkzjmyrpcq8_YA(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKqr79XenqcMU8ttt1qLOQFfFVI(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->p()V

    return-void
.end method

.method public static synthetic $r8$lambda$urjP2CcmQNmK7pMl9Xj53KpSrtw(Lcom/samsung/android/mcf/continuity/impl/o;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/o;->b(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->o:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
    .registers 4

    const/16 p1, 0x14

    const/16 v0, 0x3f8

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-object p2
.end method

.method public static synthetic a(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;
    .registers 3

    invoke-virtual {p2, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;B[B)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;B[B[B)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/util/List;)V

    return-void
.end method

.method public static a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 4
    .param p0    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    if-eqz p3, :cond_5

    invoke-virtual {p3, p1, p0, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;->onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;I)V

    :cond_5
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;B[B[BLjava/lang/String;ILcom/samsung/android/mcf/continuity/impl/f;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 9

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;B[B[B)V

    const-string p0, "ContinuitySession"

    const-string/jumbo p2, "sendUdpMessage"

    invoke-static {p0, p2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :try_start_12
    invoke-virtual {p6, v0, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/f;->a(Ljava/net/SocketAddress;B[B)V

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda13;

    invoke-direct {p1, p7}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_3f

    :catch_1e
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "IOException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda14;

    invoke-direct {p0, p7}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    :goto_3f
    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setBtMac(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p0

    const/16 v0, 0x15

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method private synthetic a(ZLcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 3

    if-eqz p1, :cond_a

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/o$f;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/mcf/continuity/impl/o$f;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    goto :goto_c

    :cond_a
    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    :goto_c
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-virtual {p1, p0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method private synthetic b(Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->f()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-object p3
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/o;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic b(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/o;->a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/impl/o;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private synthetic c(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 14

    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/impl/o;)Lcom/samsung/android/mcf/continuity/impl/d;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    return-void
.end method

.method private synthetic g(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic h(Ljava/lang/String;)V
    .registers 5

    const-string v0, "ContinuitySession"

    const-string v1, "handlePeerConnected"

    const-string v2, "accept timer is expired"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic p()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
    .registers 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "sendFile"

    const-string p2, "null continuityNetworkPolicyWrapper"

    :goto_12
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_16
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_26

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "sendFile"

    const-string p2, "BT session does not support File"

    goto :goto_12

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/e;

    if-nez v2, :cond_53

    const-string p0, "ContinuitySession"

    const-string/jumbo p2, "sendFile"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not connected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_53
    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mcf/continuity/impl/e;->a([BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_29 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public a()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->k()V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->e()Z

    :cond_c
    return-void
.end method

.method public final a(I)V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onSessionStatusChanged(I)V

    :cond_7
    return-void
.end method

.method public final a(ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;III)V
    .registers 13
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getBtMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPort()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getSessionKey()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3f

    array-length v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_41

    :cond_3f
    const-string v1, "empty"

    :goto_41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "ContinuitySession"

    const-string v2, "handlePeerStatusChanged"

    invoke-static {v1, v2, p5}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_63

    const-string p0, "null btMac"

    :goto_5f
    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_63
    iget-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6e

    const-string p0, "not contain peerStatusListener"

    goto :goto_5f

    :cond_6e
    packed-switch p1, :pswitch_data_92

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid status : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :pswitch_86
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/o;->c(Ljava/lang/String;)V

    goto :goto_91

    :pswitch_8a
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;I)V

    goto :goto_91

    :pswitch_8e
    invoke-virtual {p0, v0, p2, p4}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I)V

    :goto_91
    return-void

    :pswitch_data_92
    .packed-switch 0x14
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
    .end packed-switch
.end method

.method public a(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 11
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    const-string/jumbo v1, "responseConnect"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_15

    const-string/jumbo p0, "session is not opened"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3ee

    :goto_11
    invoke-static {p2, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void

    :cond_15
    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not supported networkType : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3ef

    goto :goto_11

    :cond_36
    const/16 v3, 0xb

    if-eq v0, v3, :cond_49

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->o()Z

    move-result v0

    if-nez v0, :cond_49

    const-string/jumbo p0, "server socket is not opened"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3f4

    goto :goto_11

    :cond_49
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->l()I

    move-result v0

    invoke-static {p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->createInstance(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p3

    if-nez p1, :cond_6b

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    move-result v3

    if-eqz v3, :cond_61

    const-string p0, "duplicated connect"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3f6

    goto :goto_11

    :cond_61
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getRequiredWifiInterface()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isWifiInterfaceConnected()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getWifiApSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->isEnableWifiRequested()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getNeedToDisconnectInterface()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {v3, p1, p2, v0, p3}, Lcom/samsung/android/mcf/continuity/impl/d;->a(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z

    move-result p3

    if-nez p3, :cond_ee

    const-string p3, "fail sendRequestConnectCommand"

    invoke-static {v2, v1, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_ee

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    const/16 p0, 0x3e8

    invoke-static {p2, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    :cond_ee
    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->o:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    const-string v1, "ContinuitySession"

    if-nez v0, :cond_f

    const-string/jumbo p0, "registerPeerConnectionRequestListener"

    const-string p1, "not opened session"

    invoke-static {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/d;->g()Z

    move-result p1

    if-nez p1, :cond_24

    const-string/jumbo p1, "registerSessionListener"

    const-string v0, "fail sendRegisterSessionListenerCommand"

    invoke-static {v1, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    :cond_24
    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    const-string/jumbo v1, "open"

    const-string v2, "ContinuitySession"

    if-eqz v0, :cond_f

    const-string p0, "already opened"

    :goto_b
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->r()Z

    move-result v0

    if-nez v0, :cond_18

    const-string p0, "fail openServer"

    goto :goto_b

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->s()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/d;->f()Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "fail sendOpenSessionCommand"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->t()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->c()V

    :cond_39
    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/lang/String;B[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 15
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/e;->g()I

    move-result v6

    const-string/jumbo v0, "sendUdpMessage"

    const-string v1, "ContinuitySession"

    if-eqz v5, :cond_47

    const/4 v2, -0x1

    if-ne v6, v2, :cond_13

    goto :goto_47

    :cond_13
    invoke-virtual {p1, p4}, Lcom/samsung/android/mcf/continuity/impl/e;->b([B)[B

    move-result-object v4

    if-nez v4, :cond_27

    const-string p0, "fail to encrypt"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda4;

    invoke-direct {p0, p5}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_27
    iget-object v7, p0, Lcom/samsung/android/mcf/continuity/impl/o;->k:Lcom/samsung/android/mcf/continuity/impl/f;

    if-nez v7, :cond_39

    const-string p0, "null continuityDatagramSocket"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda5;

    invoke-direct {p0, p5}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_39
    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda6;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;B[B[BLjava/lang/String;ILcom/samsung/android/mcf/continuity/impl/f;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void

    :cond_47
    :goto_47
    const-string p0, "null ip or invalid udpPort"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda7;

    invoke-direct {p0, p5}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    const-string v1, "handlePeerConnectionRequested"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_e

    const-string p0, "null mPeerConnectionRequestListener"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v0, ""

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;->onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/e;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_70

    if-eqz v1, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContinuitySession"

    const-string v3, "disconnect"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/e;->c()V

    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuitySession"

    const-string v3, "disconnect"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_58
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5b
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_6d

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->b()V

    :cond_6c
    return-void

    :catchall_6d
    move-exception p0

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0

    :catchall_70
    move-exception p0

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySession"

    const-string v2, "handlePeerDisconnected"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    const-string/jumbo v1, "requestConnect"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_15

    const-string/jumbo p0, "session is not opened"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3ee

    :goto_11
    invoke-static {p1, p0, p3}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void

    :cond_15
    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not supported networkType : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3ef

    goto :goto_11

    :cond_36
    const/16 v3, 0xb

    if-eq v0, v3, :cond_49

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->o()Z

    move-result v0

    if-nez v0, :cond_49

    const-string/jumbo p0, "server socket is not opened"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3f4

    goto :goto_11

    :cond_49
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->l()I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string p0, "duplicated connect"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3f6

    goto :goto_11

    :cond_5b
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->createInstance(Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getTopology()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getDesiredAvailableWifiInterface()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->getDesiredConnectedWifiInterface()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {v3, p1, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z

    move-result p2

    if-nez p2, :cond_c2

    const-string p2, "fail sendRequestConnectCommand"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x3e8

    invoke-static {p1, p0, p3}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    :cond_c2
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I)V
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    if-nez v0, :cond_14

    const-string p0, "ContinuitySession"

    const-string p1, "handlePeerConnected"

    const-string p2, "null mContinuityNetworkPolicyWrapper"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_a2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid networkType : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySession"

    const-string p2, "handlePeerConnected"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    :cond_3a
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Z)V

    const-string v2, "ContinuitySession"

    const-string v3, "handlePeerConnected"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->q()V

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getSessionKey()[B

    move-result-object v7

    if-nez v7, :cond_5f

    const-string p0, "ContinuitySession"

    const-string p1, "handlePeerConnected"

    const-string p2, "null sessionKey"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5f
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->m()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->d()Lcom/samsung/android/mcf/continuity/impl/e$g;

    move-result-object v9

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I[BILcom/samsung/android/mcf/continuity/impl/e$g;)Lcom/samsung/android/mcf/continuity/impl/e;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_71
    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_9f

    if-nez v0, :cond_7d

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/impl/e;->a()V

    goto :goto_c2

    :cond_7d
    new-instance p2, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-static {p2, v0, v1, p3}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->scheduleOnTimeout(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    if-nez p2, :cond_99

    const-string p2, "ContinuitySession"

    const-string p3, "handlePeerConnected"

    const-string v0, "null future"

    invoke-static {p2, p3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;)V

    return-void

    :cond_99
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    :catchall_9f
    move-exception p0

    :try_start_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw p0

    :cond_a2
    const/4 v0, 0x0

    new-array v4, v0, [B

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->d()Lcom/samsung/android/mcf/continuity/impl/e$g;

    move-result-object v6

    const/4 v3, -0x1

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I[BILcom/samsung/android/mcf/continuity/impl/e$g;)Lcom/samsung/android/mcf/continuity/impl/e;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b4
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_c3

    iget-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    :goto_c2
    return-void

    :catchall_c3
    move-exception p0

    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw p0
.end method

.method public final a(Ljava/lang/String;[B)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    if-nez p0, :cond_f

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "onMessagePacketReceived"

    const-string p2, "null mMessageListener"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getBtMacHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;->onReceived(Ljava/lang/String;[B)V

    return-void
.end method

.method public final a(Ljava/net/Socket;)V
    .registers 6
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_13

    const-string p0, "ContinuitySession"

    const-string v0, "onAccepted"

    const-string v1, "null inetAddress"

    :goto_c
    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void

    :cond_13
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    const-string p0, "ContinuitySession"

    const-string v0, "onAccepted"

    const-string v1, "null ip"

    goto :goto_c

    :cond_20
    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_44

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown ip : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuitySession"

    const-string v1, "onAccepted"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContinuitySession"

    const-string v3, "onAccepted"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const-string v0, "ContinuitySession"

    const-string v2, "onAccepted"

    const-string/jumbo v3, "remove timer"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_98

    const-string p0, "ContinuitySession"

    const-string v0, "onAccepted"

    const-string/jumbo v1, "timer already expired"

    goto/16 :goto_c

    :cond_98
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9f
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda9;-><init>(Ljava/net/Socket;)V

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/e;

    monitor-exit v0

    goto :goto_c2

    :catchall_ae
    move-exception p0

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_ae

    throw p0

    :cond_b1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b4
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/net/Socket;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/e;

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_e4

    :goto_c2
    if-nez p0, :cond_e3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not connected btMac : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuitySession"

    const-string v1, "accept"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    :cond_e3
    return-void

    :catchall_e4
    move-exception p0

    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p0
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityWifiInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;->onWifiInfoUpdated(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public a(ILcom/samsung/android/mcf/continuity/impl/i;Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 9
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/mcf/continuity/impl/i;",
            "Ljava/util/function/Supplier<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/impl/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "responseReceiveFile"

    const-string p2, "null continuityNetworkPolicyWrapper"

    :goto_16
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1a
    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_2a

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "responseReceiveFile"

    const-string p2, "BT session does not support File"

    goto :goto_16

    :cond_2a
    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/impl/i;->getFileSequence()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_31
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/e;

    if-nez p0, :cond_5a

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "responseReceiveFile"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not connected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v2

    :cond_5a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/e;->a(IILjava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_60
    move-exception p0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_31 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Z)Z
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;ZLcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public a(Lcom/samsung/android/mcf/continuity/impl/i;)Z
    .registers 7
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/i;->getFileSequence()I

    move-result p1

    const-string v2, "THIS_DEVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/o;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1f
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/e;

    if-nez p0, :cond_47

    const-string p0, "ContinuitySession"

    const-string p1, "cancelFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not connected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v3

    :cond_47
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->b(I)Z

    move-result p0

    monitor-exit v2

    return p0

    :catchall_4d
    move-exception p0

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_1f .. :try_end_4f} :catchall_4d

    throw p0

    :cond_50
    const-string v2, "THIS_DEVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/o;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    return v3

    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_62
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/e;

    if-nez p0, :cond_8a

    const-string p0, "ContinuitySession"

    const-string p1, "cancelFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not connected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v3

    :cond_8a
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->a(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_62 .. :try_end_92} :catchall_90

    throw p0

    :cond_93
    return v3
.end method

.method public final a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_d
    check-cast p0, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public a(Ljava/lang/String;[BIILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "sendMessage"

    const-string p2, "null continuityNetworkPolicyWrapper"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1d
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/continuity/impl/e;

    if-nez v3, :cond_46

    const-string p0, "ContinuitySession"

    const-string/jumbo p2, "sendMessage"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not connected btMac : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v1

    :cond_46
    invoke-virtual {v3}, Lcom/samsung/android/mcf/continuity/impl/e;->e()B

    move-result v7

    const/16 v4, 0xb

    if-ne v0, v4, :cond_b3

    const/16 p3, 0x44c

    if-eq p4, p3, :cond_79

    const-string p0, "ContinuitySession"

    const-string/jumbo p2, "sendMessage"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "BT session cannot support traffic type ("

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v1

    :cond_79
    invoke-virtual {v3, v7, p5}, Lcom/samsung/android/mcf/continuity/impl/e;->a(BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    const-string p3, "ContinuitySession"

    const-string/jumbo p4, "sendMessage"

    new-instance p5, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda3;

    invoke-direct {p5, p1, v7, p2}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;B[B)V

    invoke-static {p3, p4, p5}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0, p1, p2, v7}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Ljava/lang/String;[BB)Z

    move-result p0

    if-nez p0, :cond_cb

    const-string p0, "ContinuitySession"

    const-string/jumbo p2, "sendMessage"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fail sendSessionMessageCommand : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/mcf/continuity/impl/e;->a(B)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    monitor-exit v2

    return v1

    :cond_b3
    const/16 v4, 0xc

    if-ne v0, v4, :cond_ec

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_bf

    invoke-virtual {v3, p4, v7, p2, p5}, Lcom/samsung/android/mcf/continuity/impl/e;->a(IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    goto :goto_cb

    :cond_bf
    const/16 p4, 0xc9

    if-ne p3, p4, :cond_d1

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v8, p2

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/lang/String;B[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    :cond_cb
    :goto_cb
    invoke-virtual {v3}, Lcom/samsung/android/mcf/continuity/impl/e;->h()V

    const/4 p0, 0x1

    monitor-exit v2

    return p0

    :cond_d1
    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "sendMessage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not supported messageType : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v1

    :cond_ec
    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "sendMessage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not supported networkType : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v1

    :catchall_107
    move-exception p0

    monitor-exit v2
    :try_end_109
    .catchall {:try_start_1d .. :try_end_109} :catchall_107

    throw p0
.end method

.method public final b()V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->k:Lcom/samsung/android/mcf/continuity/impl/f;

    if-eqz v0, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuitySession"

    const-string v3, "closeDatagramSocket"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/f;->a()V

    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->k:Lcom/samsung/android/mcf/continuity/impl/f;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySession"

    const-string v2, "forceDisconnect"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Ljava/lang/String;)Z

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->setBtMac(Ljava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p1

    const/16 v0, 0x15

    invoke-static {p1, v0, p2, p0}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final c()V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    const-string v1, "closeServer"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_13

    const-string/jumbo p0, "wifi ap is not supported"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const-string v0, "-"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/n;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;

    :cond_22
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySession"

    const-string v0, "handlePeerConnecting"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Lcom/samsung/android/mcf/continuity/impl/e$g;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$e;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$e;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e()Lcom/samsung/android/mcf/continuity/impl/f$a;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$g;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$g;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    const/4 p1, 0x0

    const-string v0, "hasWifiSession"

    const-string v1, "ContinuitySession"

    if-nez p0, :cond_15

    const-string p0, "null continuityNetworkPolicyWrapper"

    :goto_11
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;->getType()I

    move-result p0

    const/16 v2, 0xb

    if-ne p0, v2, :cond_20

    const-string p0, "BT session"

    goto :goto_11

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$c;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-object v2

    :cond_31
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final g()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public final h()Lcom/samsung/android/mcf/continuity/impl/c$c;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public final i()Lcom/samsung/android/mcf/continuity/impl/c$d;
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$d;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$d;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public final j()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    return-object v0
.end method

.method public k()V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/e;->c()V

    goto :goto_12

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_51

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->l:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->n:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->t()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    return-void

    :catchall_51
    move-exception p0

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final l()I
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/n;->d()I

    move-result v1

    :cond_17
    return v1
.end method

.method public final m()I
    .registers 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->k:Lcom/samsung/android/mcf/continuity/impl/f;

    if-nez p0, :cond_f

    const-string p0, "ContinuitySession"

    const-string v0, "getLocalUdpPort"

    const-string v1, "null mContinuityDatagramSocket"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/f;->c()I

    move-result p0

    return p0
.end method

.method public n()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    return-object p0
.end method

.method public final o()Z
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final q()V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string/jumbo v0, "openDatagramSocket"

    const-string v1, "ContinuitySession"

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->k:Lcom/samsung/android/mcf/continuity/impl/f;

    if-nez v2, :cond_48

    :try_start_9
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/f;->b()Lcom/samsung/android/mcf/continuity/impl/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->e()Lcom/samsung/android/mcf/continuity/impl/f$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mcf/continuity/impl/f;->b(Lcom/samsung/android/mcf/continuity/impl/f$a;)V

    iput-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o;->k:Lcom/samsung/android/mcf/continuity/impl/f;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/f;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_2e} :catch_2f

    goto :goto_48

    :catch_2f
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance SocketException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public final r()Z
    .registers 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    const-string/jumbo v1, "openServer"

    const-string v2, "ContinuitySession"

    if-nez v0, :cond_15

    const-string/jumbo p0, "wifi ap is not supported"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/n;->b()Lcom/samsung/android/mcf/continuity/impl/n;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_63

    :try_start_1c
    invoke-virtual {v3}, Lcom/samsung/android/mcf/continuity/impl/n;->c()V
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_1c .. :try_end_1f} :catch_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start to accept "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;

    invoke-virtual {v3}, Lcom/samsung/android/mcf/continuity/impl/n;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->j:Lcom/samsung/android/mcf/continuity/impl/n;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/n;->a(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0

    :catch_46
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableReuseAddress SocketException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->c()V

    return v0

    :catch_63
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createInstance IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final s()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->i()Lcom/samsung/android/mcf/continuity/impl/c$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$d;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->j()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->g()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->h()Lcom/samsung/android/mcf/continuity/impl/c$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$c;)V

    return-void
.end method

.method public final t()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$d;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$c;)V

    return-void
.end method

.method public u()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->o:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method

.method public v()V
    .registers 2

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->i:Z

    if-nez v0, :cond_f

    const-string p0, "ContinuitySession"

    const-string/jumbo v0, "unregisterPeerConnectionRequestListener"

    const-string v1, "not opened session"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->m:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->o()Z

    return-void
.end method
