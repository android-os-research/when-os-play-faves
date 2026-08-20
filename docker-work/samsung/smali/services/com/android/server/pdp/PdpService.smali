.class public Lcom/android/server/pdp/PdpService;
.super Lcom/android/server/SystemService;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pdp/PdpService$SvcPdpHandler;
    }
.end annotation


# static fields
.field public static final MSG_DISPLAY_PDPTOAST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PdpService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

.field public mSvcPdpThread:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSvcPdpThread(Lcom/android/server/pdp/PdpService;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmSvcPdpHandler(Lcom/android/server/pdp/PdpService;Lcom/android/server/pdp/PdpService$SvcPdpHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 173
    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    .line 174
    new-instance p1, Lcom/android/server/pdp/PdpService$1;

    const-string/jumbo v0, "mSvcPdpThread"

    invoke-direct {p1, p0, v0}, Lcom/android/server/pdp/PdpService$1;-><init>(Lcom/android/server/pdp/PdpService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Landroid/os/HandlerThread;

    .line 180
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method


# virtual methods
.method public handleDisplayPDPToast(Ljava/lang/String;I)V
    .registers 9

    const-string v0, "PdpService"

    const-string v1, "[PDP] displayPDPToast start"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v2, v1

    :goto_9
    if-gt v2, p2, :cond_23

    .line 48
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    .line 49
    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 50
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_1d
    move-exception p0

    const-string p1, "[PDP] Toast exception"

    .line 53
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    const-string p0, "[PDP] displayPDPToast end"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    const-string p1, "PdpService"

    const-string v0, "[PDP] PHASE_BOOT_COMPLETED"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/server/pdp/PdpService;->pdpServiceReady()V

    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 2

    const-string p0, "PdpService"

    const-string v0, "[PDP] onStart"

    .line 160
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pdpServiceReady()V
    .registers 5

    const-string v0, "PdpService"

    const-string v1, "[PDP] pdpServiceReady >"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 154
    iget-object p0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p0, "[PDP] pdpServiceReady <"

    .line 155
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
