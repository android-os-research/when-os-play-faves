.class public Lcom/android/server/appop/AppOpsService$4;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 2044
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 2047
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 2049
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 2050
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetPackageManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 2051
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p2, p2, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v5

    const-wide/16 v2, 0x1000

    move-object v1, p1

    .line 2050
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 2052
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$misSamplingTarget(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 2053
    monitor-enter p0

    .line 2054
    :try_start_2a
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2055
    monitor-exit p0

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p1

    :cond_38
    :goto_38
    return-void
.end method
