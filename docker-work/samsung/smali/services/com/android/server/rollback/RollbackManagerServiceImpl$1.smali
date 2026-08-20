.class public Lcom/android/server/rollback/RollbackManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$NTY2CZIre0jGsNNZ2ARBTCfX2kY(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->lambda$onReceive$0(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(II)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$massertInWorkerThread(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 248
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$menableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, -0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    .line 254
    :goto_10
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 256
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManagerInternal;->setEnableRollbackCode(II)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 236
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$massertInWorkerThread(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    const/4 v0, -0x1

    .line 239
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 241
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 244
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$mqueueSleepIfNeeded(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$mgetHandler(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method
