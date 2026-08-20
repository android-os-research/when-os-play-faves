.class public Lcom/samsung/android/mcf/continuity/impl/o$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/impl/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/o;->e()Lcom/samsung/android/mcf/continuity/impl/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/o;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$g;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;I[B)Ljava/lang/String;
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


# virtual methods
.method public a(Ljava/net/InetAddress;II[B)V
    .registers 7
    .param p1    # Ljava/net/InetAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p0, "ContinuitySession"

    const-string/jumbo p1, "onPacketReceived"

    const-string p2, "null ip"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$g;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown ip : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySession"

    const-string/jumbo p2, "onPacketReceived"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$g;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Lcom/samsung/android/mcf/continuity/impl/o;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3f
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/o$g;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/impl/o;->c(Lcom/samsung/android/mcf/continuity/impl/o;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/continuity/impl/e;

    if-nez v1, :cond_6c

    const-string p0, "ContinuitySession"

    const-string/jumbo p2, "onPacketReceived"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not connected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_6c
    invoke-virtual {v1, p4}, Lcom/samsung/android/mcf/continuity/impl/e;->a([B)[B

    move-result-object p4

    monitor-exit p1
    :try_end_71
    .catchall {:try_start_3f .. :try_end_71} :catchall_c3

    if-nez p4, :cond_91

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "decrypt fail : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySession"

    const-string/jumbo p2, "onPacketReceived"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_91
    const/16 p1, 0xb

    if-eq p2, p1, :cond_b0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "wrong packetType = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySession"

    const-string/jumbo p2, "onPacketReceived"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :cond_b0
    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I[B)V

    const-string p2, "ContinuitySession"

    const-string/jumbo p3, "onPacketReceived"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$g;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0, v0, p4}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/impl/o;Ljava/lang/String;[B)V

    :goto_c2
    return-void

    :catchall_c3
    move-exception p0

    :try_start_c4
    monitor-exit p1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw p0
.end method
