.class public Lcom/android/server/HermesService$3;
.super Landroid/content/BroadcastReceiver;
.source "HermesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HermesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "HERMES#Service"

    if-eqz p1, :cond_3d

    .line 404
    invoke-static {}, Lcom/android/server/HermesService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 405
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 406
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-virtual {p0}, Lcom/android/server/HermesService;->hermesSecnvmPowerOn()I

    move-result p0

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notify key guard showing to hermesd ret : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 409
    :cond_3d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    const-string p1, "ACTION_DATE_CHANGED intent called"

    .line 410
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-static {p1}, Lcom/android/server/HermesService;->-$$Nest$mTransmitCollectedDataToServer(Lcom/android/server/HermesService;)V

    .line 412
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mCollectSkeymasterDumpThread(Lcom/android/server/HermesService;)V

    goto :goto_6f

    .line 413
    :cond_59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.android.intent.action.TEST_TRIGGER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const-string p1, "Test intent trigger called"

    .line 414
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mCollectSkeymasterDumpThread(Lcom/android/server/HermesService;)V

    :cond_6f
    :goto_6f
    return-void
.end method
