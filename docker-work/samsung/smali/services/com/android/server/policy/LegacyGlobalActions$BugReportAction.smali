.class public Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/internal/globalactions/LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BugReportAction"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const p1, 0x108040f

    const v0, 0x1040284

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 4

    .line 410
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x1040283

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onLongPress()Z
    .registers 3

    .line 386
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 391
    :cond_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x125

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 392
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1a

    :catch_1a
    return v1
.end method

.method public onPress()V
    .registers 5

    .line 362
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 368
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmHandler(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
