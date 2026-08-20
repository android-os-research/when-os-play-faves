.class public Lcom/att/iqi/libs/IQIPackageInstaller$1;
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

    .line 82
    iput-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 85
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    const-string v0, "com.att.iqi.extra.IQI_PACKAGE_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$fputmPackageUri(Lcom/att/iqi/libs/IQIPackageInstaller;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$fgetmPackageUri(Lcom/att/iqi/libs/IQIPackageInstaller;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 87
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, "Received broadcast to start install..."

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 88
    :cond_1e
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$msetInstallationRequested(Lcom/att/iqi/libs/IQIPackageInstaller;Z)V

    .line 89
    iget-object p1, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$fgetiqiManager(Lcom/att/iqi/libs/IQIPackageInstaller;)Lcom/att/iqi/lib/IQIManager;

    move-result-object p1

    iget-object p2, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p2}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$fgetmServiceStateListener(Lcom/att/iqi/libs/IQIPackageInstaller;)Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    .line 90
    iget-object p0, p0, Lcom/att/iqi/libs/IQIPackageInstaller$1;->this$0:Lcom/att/iqi/libs/IQIPackageInstaller;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIPackageInstaller;->-$$Nest$msuspendPackage(Lcom/att/iqi/libs/IQIPackageInstaller;)V

    goto :goto_44

    .line 92
    :cond_39
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, "Invalid package URI"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method
