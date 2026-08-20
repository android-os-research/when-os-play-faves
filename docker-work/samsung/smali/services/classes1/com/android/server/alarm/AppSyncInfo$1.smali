.class public Lcom/android/server/alarm/AppSyncInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 317
    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p2, p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    const-string p2, "account"

    .line 322
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/AccountManager;

    if-eqz p1, :cond_36

    .line 325
    :try_start_f
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$1;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountListener(Lcom/android/server/alarm/AppSyncInfo;)Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception p0

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignore Exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSyncInfo"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-void
.end method
