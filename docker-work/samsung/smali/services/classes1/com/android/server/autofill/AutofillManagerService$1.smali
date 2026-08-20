.class public Lcom/android/server/autofill/AutofillManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public static synthetic $r8$lambda$gR3lHeitxLs-Odltg-gqWTiGaX0(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService$1;->lambda$onReceive$0(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->forceRemoveFinishedSessionsLocked()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 172
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_17

    const-string p1, "AutofillManagerService"

    const-string p2, "Close system dialogs"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_17
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->access$000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 179
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$1$$ExternalSyntheticLambda0;-><init>()V

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    invoke-static {p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 180
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_34

    .line 181
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$1;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_37

    :catchall_34
    move-exception p0

    .line 180
    :try_start_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0

    :cond_37
    :goto_37
    return-void
.end method
