.class public Lcom/android/server/autofill/Session$1;
.super Landroid/content/BroadcastReceiver;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.service.autofill.action.DELAYED_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p0, "AutofillSession"

    const-string p1, "Unexpected action is received."

    .line 393
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const-string p1, "android.service.autofill.extra.REQUEST_ID"

    .line 396
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    const-string p0, "AutofillSession"

    const-string p1, "Delay fill action is missing request id extra."

    .line 397
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const-string p1, "AutofillSession"

    const-string/jumbo v0, "mDelayedFillBroadcastReceiver delayed fill action received"

    .line 400
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object p1, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_31
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    const/4 v1, 0x0

    .line 402
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.service.autofill.extra.FILL_RESPONSE"

    .line 403
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/service/autofill/FillResponse;

    .line 404
    iget-object p0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmAssistReceiver(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->processDelayedFillLocked(ILandroid/service/autofill/FillResponse;)V

    .line 405
    monitor-exit p1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4b

    throw p0
.end method
