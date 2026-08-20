.class public Lcom/samsung/android/mcf/continuity/impl/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;


# static fields
.field public static final c:Ljava/lang/String; = "ContinuitySimpleMessageManagerImpl"


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/impl/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/samsung/android/mcf/continuity/impl/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ukuOG7Xbc0g0LOj-_qpeHXiVuj4(Lcom/samsung/android/mcf/continuity/impl/s;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/s;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whdD8eTwcXG_lvtzn2RZvci4rzw(Lcom/samsung/android/mcf/continuity/impl/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/s;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;)V
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/s;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/s$a;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/s$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/s;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->b(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/d;->h()Z

    move-result p1

    if-nez p1, :cond_22

    const-string p1, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v0, "registerMessageListener"

    const-string v1, "fail sendRegisterMessageListenerCommand"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->b(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    :cond_22
    return-void
.end method

.method private synthetic b()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->b(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->p()Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/c;->b(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method

.method public getMessageIntentAction()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string v1, "getMessageIntentAction"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerMessageIntentListener(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "registerMessageIntentListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "registerMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/s;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public sendMessage(Ljava/lang/String;[B)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "sendMessage"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown deviceId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_29
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public unregisterMessageIntentListener()V
    .registers 4

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "unregisterMessageIntentListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->n()Z

    return-void
.end method

.method public unregisterMessageListener()V
    .registers 4

    const-string v0, "ContinuitySimpleMessageManagerImpl"

    const-string/jumbo v1, "unregisterMessageListener"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/s;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
