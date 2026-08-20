.class public Lcom/samsung/android/mcf/continuity/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/e$g;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "ContinuityConnection"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:I

.field public final d:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:I

.field public final f:Lcom/samsung/android/mcf/continuity/impl/t;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public volatile g:Lcom/samsung/android/mcf/continuity/impl/e$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile h:I

.field public final i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:B

.field public final k:Landroid/util/ArrayMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public m:I

.field public final n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mcf/continuity/impl/m;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final p:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/continuity/impl/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-TD479UPqs3ZoVTDs7nmNZg_vQk(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J[BLjava/lang/Integer;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J[BLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2JIYPQnlXkCnfSDe6yGZf5C0UyI(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e;->b(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$66CbsWqsXwOpH7NbWlEbDruqq7s(Lcom/samsung/android/mcf/continuity/impl/e;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9bf2ZIFyd2GKATZed65MhHBht98(Lcom/samsung/android/mcf/continuity/impl/e;IID)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/e;->a(IID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ViuftXZjSq4Ytf_BaQ1q5AbR8mA(Lcom/samsung/android/mcf/continuity/impl/e;[BLjava/lang/Integer;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/mcf/continuity/impl/e;->a([BLjava/lang/Integer;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$lq_qx_ALj-Bufu6mGVyPIlrpkTc(Lcom/samsung/android/mcf/continuity/impl/e;II)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e;->a(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ls3sOVDu4Ds6uiTPePbZOKop1IY(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q5DrhA_wVRpdT4cAtx1zNHNkPmo(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/e;->b(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmosjuEOy-nkJKTA5Q-awJklPZ0(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I[BILcom/samsung/android/mcf/continuity/impl/e$g;)V
    .registers 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/mcf/continuity/impl/e$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->j:B

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->l:Ljava/lang/Object;

    iput v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->m:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e;->b:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/e;->c:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/e;->d:[B

    iput p5, p0, Lcom/samsung/android/mcf/continuity/impl/e;->e:I

    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/e;->g:Lcom/samsung/android/mcf/continuity/impl/e$g;

    new-instance p3, Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/e;->b()Lcom/samsung/android/mcf/continuity/impl/t$f;

    move-result-object v7

    move-object v2, p3

    move-object v3, p1

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mcf/continuity/impl/t;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLcom/samsung/android/mcf/continuity/impl/t$f;)V

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->k:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e$g;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->g:Lcom/samsung/android/mcf/continuity/impl/e$g;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I[BILcom/samsung/android/mcf/continuity/impl/e$g;)Lcom/samsung/android/mcf/continuity/impl/e;
    .registers 14
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/impl/e$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/e;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/e;-><init>(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;I[BILcom/samsung/android/mcf/continuity/impl/e$g;)V

    return-object v7
.end method

.method private synthetic a(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(IID)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;->getFileSequence()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J[BLjava/lang/Integer;)V
    .registers 22

    new-instance v11, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda4;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;[BLjava/lang/Integer;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J)V

    invoke-static {v11}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/e;IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/e;->c(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;I[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;I[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method private synthetic a(Ljava/net/Socket;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;)V
    .registers 10

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_13

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->d:[B

    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/e$d;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/mcf/continuity/impl/e$d;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/util/function/BiConsumer;)V

    iget v3, p0, Lcom/samsung/android/mcf/continuity/impl/e;->c:I

    const/16 v4, 0x44c

    const/16 v5, 0x17

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;III)V

    return-void
.end method

.method private synthetic a([BLjava/lang/Integer;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v14, p4

    const-wide/16 v12, 0x0

    const-string/jumbo v11, "sendFile"

    const-string v10, "ContinuityConnection"

    if-eqz p1, :cond_aa

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    goto/16 :goto_aa

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v11, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3a
    new-instance v8, Lcom/samsung/android/mcf/continuity/impl/m;

    iget-object v4, v0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/mcf/continuity/impl/e;->d:[B

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/mcf/continuity/impl/e;->b(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    move-result-object v17
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_48} :catch_82

    move-object v2, v8

    move-object/from16 v3, p5

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v15, v8

    move-object/from16 v18, v9

    move-wide/from16 v8, p8

    move-object v14, v10

    move-object/from16 v10, v18

    move-object v1, v11

    move-object/from16 v11, p1

    move/from16 v12, v16

    move-object/from16 v13, v17

    :try_start_60
    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/mcf/continuity/impl/m;-><init>(Ljava/net/Socket;Ljava/lang/String;I[BLjava/io/InputStream;J[B[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_63} :catch_80

    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/continuity/impl/m;

    if-eqz v0, :cond_79

    const-string v2, "close prevContinuityFileSocket"

    invoke-static {v14, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/m;->b()V

    :cond_79
    invoke-virtual {v15}, Lcom/samsung/android/mcf/continuity/impl/m;->e()V

    invoke-virtual {v15}, Lcom/samsung/android/mcf/continuity/impl/m;->k()V

    return-void

    :catch_80
    move-exception v0

    goto :goto_85

    :catch_82
    move-exception v0

    move-object v14, v10

    move-object v1, v11

    :goto_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void

    :cond_aa
    :goto_aa
    move-object v14, v10

    move-object v5, v11

    move-wide v2, v12

    const/16 v4, 0x3e

    const-string v0, "fail connectFileSocket"

    invoke-static {v14, v5, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method

.method public static synthetic b(IID)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/e;IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/e;->b(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-void
.end method

.method private synthetic b(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "handleAcceptedSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->d:[B

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/e$b;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/mcf/continuity/impl/e$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->c:I

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->a(Ljava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;I)V

    return-void
.end method

.method private synthetic b(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V
    .registers 5

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/util/function/BiConsumer;)V

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic e(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
    .registers 20
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/mcf/continuity/impl/e;->b:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/mcf/continuity/impl/e;->b:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getPort()I

    move-result v2

    if-eqz v1, :cond_7b

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    goto :goto_7b

    :cond_13
    iget-object v3, v0, Lcom/samsung/android/mcf/continuity/impl/e;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_16
    iget v10, v0, Lcom/samsung/android/mcf/continuity/impl/e;->m:I

    add-int/lit8 v4, v10, 0x1

    iput v4, v0, Lcom/samsung/android/mcf/continuity/impl/e;->m:I

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_78

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocket()Ljava/net/Socket;

    move-result-object v11

    invoke-static {v1, v2}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocketAddress(Ljava/lang/String;I)Ljava/net/SocketAddress;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuityConnection"

    const-string/jumbo v3, "sendFile"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p5

    move v4, v10

    move-object v5, v11

    move-object v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J)V

    invoke-virtual {p0, v11, v12, v13}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/i;

    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    const-string v2, "THIS_DEVICE"

    invoke-direct {v1, v2, v0, v10}, Lcom/samsung/android/mcf/continuity/impl/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    :cond_7b
    :goto_7b
    const-string v0, "ContinuityConnection"

    const-string/jumbo v1, "sendFile"

    const-string v2, "null IP or tcpPort is -1"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$f;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e$f;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-object v0
.end method

.method public final a(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
    .registers 4
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e$e;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-object v0
.end method

.method public a(B)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->k:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    return-object p0
.end method

.method public a()V
    .registers 5

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/e;->c:I

    new-instance v3, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public a(BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 3
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->k:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    if-eqz p0, :cond_12

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;->onResult(I)V

    :cond_12
    return-void
.end method

.method public a(IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 11
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->c:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t;->b(IIB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    return-void
.end method

.method public final a(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 9
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;II)V

    const-string v1, "ContinuityConnection"

    const-string v2, "closeSendFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/m;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->b()V

    :cond_1d
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void
.end method

.method public final a(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)V

    const-string p0, "ContinuityConnection"

    const-string v1, "handleFileInfoReceived"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;->onFileInfoReceived(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method

.method public a(Ljava/net/Socket;)V
    .registers 5
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->c:I

    new-instance v2, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/t;->b(Ljava/net/Socket;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/net/Socket;I[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 7
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xb

    if-eq p2, v0, :cond_28

    const/16 v0, 0x17

    if-eq p2, v0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid type : "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ContinuityConnection"

    const-string p3, "handleAcceptedSocket"

    invoke-static {p2, p3, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    goto :goto_2d

    :cond_24
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Ljava/net/Socket;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    goto :goto_2d

    :cond_28
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/t;->a(Ljava/net/Socket;[BI)V

    :goto_2d
    return-void
.end method

.method public a(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 4
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V
    .registers 5
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/SocketAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/BiConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Ljava/net/SocketAddress;",
            "Ljava/util/function/BiConsumer<",
            "[B",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/BiConsumer;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnIO(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/net/Socket;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 15
    .param p1    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "addFileSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/l;

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/e;->d:[B

    invoke-virtual {p0, p4}, Lcom/samsung/android/mcf/continuity/impl/e;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    move-result-object v9

    move-object v3, v0

    move-object v4, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/mcf/continuity/impl/l;-><init>(Ljava/net/Socket;Ljava/lang/String;[B[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_21
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2b

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/l;->e()V

    return-void

    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final a(ZI)V
    .registers 4

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/e;->h:I

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e;->g:Lcom/samsung/android/mcf/continuity/impl/e$g;

    if-nez p2, :cond_11

    const-string p0, "ContinuityConnection"

    const-string/jumbo p1, "onConnectionResult"

    const-string p2, "null ConnectionCallback"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->b:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-interface {p2, v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e$g;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Z)V

    return-void
.end method

.method public a(I)Z
    .registers 5
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "cancelReceiveFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->d(I)Lcom/samsung/android/mcf/continuity/impl/l;

    move-result-object p1

    if-nez p1, :cond_36

    const-string p0, "ContinuityConnection"

    const-string p1, "cancelReceiveFile"

    const-string v1, "cannot find continuityReceiveFile"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_36
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/h;->a()V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public a(IILjava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 9
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
            "(II",
            "Ljava/util/function/Supplier<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/h;->d()I

    move-result v3

    if-ne v3, p2, :cond_9

    if-eqz p4, :cond_22

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/mcf/continuity/impl/e;->a(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    move-result-object p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    invoke-virtual {v2, p1, p3, p0}, Lcom/samsung/android/mcf/continuity/impl/l;->a(ILjava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_29
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public a([B)[B
    .registers 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final b(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
    .registers 4
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/e$c;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-object v0
.end method

.method public final b()Lcom/samsung/android/mcf/continuity/impl/t$f;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/e$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;)V

    return-object v0
.end method

.method public final b(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 13
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v6, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;IID)V

    const-string v0, "ContinuityConnection"

    const-string v1, "handleReceiveFileStatusUpdated"

    invoke-static {v0, v1, v6}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v2, 0x33

    if-eq p2, v2, :cond_30

    packed-switch p2, :pswitch_data_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid status : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :pswitch_2d
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->c(I)V

    :cond_30
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x3c
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public b(I)Z
    .registers 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/m;

    if-nez p0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid file : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityConnection"

    const-string v0, "cancelSendFile"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_28
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/h;->a()V

    const/4 p0, 0x1

    return p0
.end method

.method public b([B)[B
    .registers 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "ContinuityConnection"

    const-string v1, "destroy"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->g:Lcom/samsung/android/mcf/continuity/impl/e$g;

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->f:Lcom/samsung/android/mcf/continuity/impl/t;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/t;->d()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/m;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/h;->c()V

    goto :goto_1b

    :cond_31
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_39
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/continuity/impl/h;->c()V

    goto :goto_3f

    :cond_4f
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_5b

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->k:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :catchall_5b
    move-exception p0

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public final c(I)V
    .registers 5
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuityConnection"

    const-string v2, "closeReceiveFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_24
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e;->d(I)Lcom/samsung/android/mcf/continuity/impl/l;

    move-result-object p1

    if-nez p1, :cond_35

    const-string p0, "ContinuityConnection"

    const-string p1, "closeReceiveFile"

    const-string v1, "cannot find continuityReceiveFile"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_35
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/l;->b()V

    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final c(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 9
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;-><init>(IID)V

    const-string v1, "ContinuityConnection"

    const-string v2, "handleSendFileStatusUpdated"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    packed-switch p2, :pswitch_data_34

    packed-switch p2, :pswitch_data_40

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid status : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :pswitch_27
    invoke-virtual {p0, p1, p5}, Lcom/samsung/android/mcf/continuity/impl/e;->c(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    goto :goto_32

    :pswitch_2b
    invoke-virtual {p5, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    goto :goto_32

    :pswitch_2f
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/e;->a(IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x28
        :pswitch_2b
        :pswitch_27
        :pswitch_2f
        :pswitch_2b
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x3c
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public final c(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .registers 6
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/mcf/continuity/impl/e;I)V

    const-string v1, "ContinuityConnection"

    const-string/jumbo v2, "sendFileData"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/continuity/impl/m;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_23

    const/16 p0, 0x3e

    :goto_1f
    invoke-virtual {p2, p0, v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;->onFileStatusUpdated(ID)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/m;->j()V

    const/16 p0, 0x29

    goto :goto_1f
.end method

.method public final d(I)Lcom/samsung/android/mcf/continuity/impl/l;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/l;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/impl/h;->d()I

    move-result v2

    if-ne v2, p1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_1d
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public d()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->b:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-byte p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->j:B

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public f()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->e:I

    return p0
.end method

.method public g()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->h:I

    return p0
.end method

.method public h()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->j:B

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_c

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->j:B

    :cond_c
    iget-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->j:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/e;->j:B

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method
