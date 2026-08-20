.class public Lcom/att/iqi/libs/IQIPackageInstaller$3;
.super Landroid/content/BroadcastReceiver;
.source "IQIPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIPackageInstaller;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIPackageInstaller;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.content.pm.extra.STATUS"

    .line 112
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$mgetFailTimes(Lcom/att/iqi/libs/IQIPackageInstaller;)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_26

    .line 117
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "Installation successful"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_24
    move v0, v1

    goto :goto_52

    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 121
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v2

    if-eqz v2, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installation failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time(s). Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 124
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p1, v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$msetFailTimes(Lcom/att/iqi/libs/IQIPackageInstaller;I)V

    .line 125
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p1, v1}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$msetInstallationRequested(Lcom/att/iqi/libs/IQIPackageInstaller;Z)V

    .line 126
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$fgetiqiManager(Lcom/att/iqi/libs/IQIPackageInstaller;)Lcom/att/iqi/lib/IQIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {v0}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$fgetmServiceStateListener(Lcom/att/iqi/libs/IQIPackageInstaller;)Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/att/iqi/lib/IQIManager;->unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    .line 127
    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller$3;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p0, p2}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$mresumePackage(Lcom/att/iqi/libs/IQIPackageInstaller;I)V

    return-void
.end method
