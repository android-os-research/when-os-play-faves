.class public Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 514
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MetaDataCollector"

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: begin action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 517
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_34

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 519
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 520
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 521
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :cond_3f
    const-string p2, "MetaDataCollector"

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: done pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_59

    return-void

    .line 528
    :cond_59
    :try_start_59
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    const-wide/16 v0, 0x80

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 528
    invoke-interface {p2, v2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 530
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    monitor-enter p2
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_6a} :catch_74

    .line 531
    :try_start_6a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;->this$1:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mloadMetaDataOnceLocked(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Landroid/content/pm/ApplicationInfo;)V

    .line 532
    monitor-exit p2

    goto :goto_93

    :catchall_71
    move-exception p0

    monitor-exit p2
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_71

    :try_start_73
    throw p0
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_74} :catch_74

    :catch_74
    move-exception p0

    const-string p1, "MetaDataCollector"

    .line 542
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getApplicationInfo: failed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_93
    return-void
.end method
