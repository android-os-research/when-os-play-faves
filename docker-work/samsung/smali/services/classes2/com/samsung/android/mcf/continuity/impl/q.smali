.class public Lcom/samsung/android/mcf/continuity/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;


# static fields
.field public static final d:Ljava/lang/String; = "ContinuitySessionManagerImpl"


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/impl/r;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/samsung/android/mcf/continuity/impl/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/samsung/android/mcf/continuity/impl/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1UFDX_Fvy3_yBbUEdJ7z83XrRuo(Lcom/samsung/android/mcf/continuity/impl/q;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/q;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HQ7E4N7xTXUk3SJWHTENLIRNhZs(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rdcX2mMaz6FnALy3YtUk_b07ZCQ(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uUbUW6pJjJLfCogi4xheYJtrLVU(Lcom/samsung/android/mcf/continuity/impl/q;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ytji6ruZCvSfrm3jn2UK4J0IQAI(Lcom/samsung/android/mcf/continuity/impl/q;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/impl/q;->a(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/r;Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q;->a:Lcom/samsung/android/mcf/continuity/impl/r;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q;->b:Lcom/samsung/android/mcf/continuity/impl/p;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    return-void
.end method

.method private synthetic a(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    if-nez p4, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/q$d;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/mcf/continuity/impl/q$d;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    move-object p0, v1

    :goto_c
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/samsung/android/mcf/continuity/impl/o;->a(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/q$b;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/q$a;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/q$c;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/mcf/continuity/impl/q$c;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->a:Lcom/samsung/android/mcf/continuity/impl/r;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/r;->a()V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->b:Lcom/samsung/android/mcf/continuity/impl/p;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/p;->a()V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->k()V

    return-void
.end method

.method public closeSession()Z
    .registers 4

    const-string v0, "ContinuitySessionManagerImpl"

    const-string v1, "closeSession"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect"

    const-string v2, "ContinuitySessionManagerImpl"

    if-nez v0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown deviceId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public getContinuitySessionFileManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->isNetworkTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->b:Lcom/samsung/android/mcf/continuity/impl/p;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getContinuitySessionMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->a:Lcom/samsung/android/mcf/continuity/impl/r;

    return-object p0
.end method

.method public openSession(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionManagerImpl"

    const-string/jumbo v1, "openSession"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public registerPeerConnectionRequestListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySessionManagerImpl"

    const-string/jumbo v1, "registerPeerConnectionRequestListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public requestConnect(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .registers 8
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

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requestConnect"

    const-string v2, "ContinuitySessionManagerImpl"

    if-nez v0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown deviceId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public responseConnect(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .registers 12
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

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const-string/jumbo v1, "responseConnect"

    const-string v2, "ContinuitySessionManagerImpl"

    if-nez v4, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unknown deviceId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4e

    if-nez p4, :cond_4e

    const-string p0, "CONFIRM_ACCEPT, but null peerStatusListener"

    goto :goto_22

    :cond_4e
    new-instance p2, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;

    move-object v1, p2

    move-object v2, p0

    move v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/mcf/continuity/impl/q;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public unregisterPeerConnectionRequestListener()V
    .registers 4

    const-string v0, "ContinuitySessionManagerImpl"

    const-string/jumbo v1, "unregisterPeerConnectionRequestListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q;->c:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/o;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
