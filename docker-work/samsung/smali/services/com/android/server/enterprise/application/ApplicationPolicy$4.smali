.class public Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .line 2924
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "ApplicationPolicy"

    .line 2926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive - mInstallReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ad

    const-string p1, "com.samsung.android.knox.intent.action.INSTALL_COMMIT_INTERNAL"

    .line 2928
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2927
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 2929
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2e
    const-string v0, "android.content.pm.extra.SESSION_ID"

    const/4 v1, 0x0

    .line 2930
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ApplicationPolicy"

    .line 2931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInstallReceiver - sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmInstallMap(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;

    if-eqz v1, :cond_a8

    .line 2934
    iput v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mSessionId:I

    const-string v2, "android.content.pm.extra.PACKAGE_NAME"

    .line 2935
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    const-string v2, "android.content.pm.extra.STATUS"

    const/4 v3, 0x1

    .line 2937
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    const-string p2, "ApplicationPolicy"

    .line 2939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInstallReceiver - packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", statusCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmInstallMap(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2944
    :cond_a8
    monitor-exit p1

    goto :goto_ad

    :catchall_aa
    move-exception p0

    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_2e .. :try_end_ac} :catchall_aa

    throw p0

    :cond_ad
    :goto_ad
    return-void
.end method
