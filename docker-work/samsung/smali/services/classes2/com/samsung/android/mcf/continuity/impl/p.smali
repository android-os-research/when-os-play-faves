.class public Lcom/samsung/android/mcf/continuity/impl/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager;


# static fields
.field public static final b:Ljava/lang/String; = "ContinuitySessionFileManagerImpl"


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/impl/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xnAcAXiYjDOhuH-40y03DDi6ViE(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/p;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    return-void
.end method

.method public static synthetic a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "responseReceiveFile"

    const-string v2, "ContinuitySessionFileManagerImpl"

    if-eqz p0, :cond_2a

    if-nez p1, :cond_b

    goto :goto_2a

    :cond_b
    :try_start_b
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_26
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2a
    :goto_2a
    const-string p0, "null file or contentResolver"

    goto :goto_26
.end method

.method public static synthetic a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1

    return-object p0
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/p$a;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/p$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->u()V

    return-void
.end method

.method public final a(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 8
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;",
            "Ljava/util/function/Supplier<",
            "Ljava/io/OutputStream;",
            ">;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySessionFileManagerImpl"

    const-string/jumbo v2, "responseReceiveFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/samsung/android/mcf/continuity/impl/i;

    if-nez v0, :cond_2b

    const-string p0, "fail to cast continuityFileId"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/i;

    if-nez p4, :cond_33

    const/4 p0, 0x0

    goto :goto_39

    :cond_33
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/p$c;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/p$c;-><init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    move-object p0, v1

    :goto_39
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/samsung/android/mcf/continuity/impl/o;->a(ILcom/samsung/android/mcf/continuity/impl/i;Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p0

    return p0
.end method

.method public cancelFile(Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)V
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySessionFileManagerImpl"

    const-string v2, "cancelFile"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/mcf/continuity/impl/i;

    if-nez v0, :cond_15

    const-string p0, "fail to cast continuityFileId"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    check-cast p1, Lcom/samsung/android/mcf/continuity/impl/i;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/i;)Z

    return-void
.end method

.method public registerFileInfoListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionFileManagerImpl"

    const-string/jumbo v1, "registerFileInfoListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Landroid/net/Uri;Landroid/content/ContentResolver;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 7
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda2;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/samsung/android/mcf/continuity/impl/p;->a(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p0

    return p0
.end method

.method public responseReceiveFile(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/io/OutputStream;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z
    .registers 6
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda3;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/samsung/android/mcf/continuity/impl/p;->a(ILcom/samsung/android/mcf/continuity/api/ContinuityFileId;Ljava/util/function/Supplier;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Z

    move-result p0

    return p0
.end method

.method public sendFile(Ljava/lang/String;[BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "sendFile"

    const-string v1, "ContinuitySessionFileManagerImpl"

    if-nez v2, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown deviceId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/p$b;

    invoke-direct {v7, p0, p6}, Lcom/samsung/android/mcf/continuity/impl/p$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;[BLjava/io/InputStream;JLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    move-result-object p0

    return-object p0
.end method

.method public unregisterFileInfoListener()V
    .registers 4

    const-string v0, "ContinuitySessionFileManagerImpl"

    const-string/jumbo v1, "unregisterFileInfoListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
