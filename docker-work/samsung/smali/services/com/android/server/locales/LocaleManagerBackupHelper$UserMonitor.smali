.class public final Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LocaleManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserMonitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 414
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 416
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 417
    iget-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$fgetmStagedDataLock(Lcom/android/server/locales/LocaleManagerBackupHelper;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_25

    .line 418
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$mdeleteStagedDataLocked(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V

    .line 419
    monitor-exit p2

    goto :goto_2d

    :catchall_22
    move-exception p0

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    :try_start_24
    throw p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception p0

    const-string p1, "LocaleManagerBkpHelper"

    const-string p2, "Exception in user monitor."

    .line 422
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method
