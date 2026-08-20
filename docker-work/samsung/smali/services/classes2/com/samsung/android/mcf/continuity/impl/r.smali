.class public Lcom/samsung/android/mcf/continuity/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;


# static fields
.field public static final b:Ljava/lang/String; = "ContinuitySessionMessageManagerImpl"


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/impl/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/r;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/impl/r;->registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Z)Z

    move-result p0

    return p0
.end method

.method public registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Z)Z
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useCallbackThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySessionMessageManagerImpl"

    const-string/jumbo v2, "registerMessageListener"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/r;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;Z)Z

    move-result p0

    return p0
.end method

.method public sendMessage(Ljava/lang/String;[BIILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .registers 13
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

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown deviceId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuitySessionMessageManagerImpl"

    const-string/jumbo p2, "sendMessage"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_26
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/r;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;[BIILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z

    move-result p0

    return p0
.end method

.method public sendMessage(Ljava/lang/String;[BILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v4, 0x44c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/r;->sendMessage(Ljava/lang/String;[BIILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)Z

    move-result p0

    return p0
.end method

.method public unregisterMessageListener()V
    .registers 4

    const-string v0, "ContinuitySessionMessageManagerImpl"

    const-string/jumbo v1, "unregisterMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/r;->a:Lcom/samsung/android/mcf/continuity/impl/o;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/o;->v()V

    return-void
.end method
