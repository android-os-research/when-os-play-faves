.class public Lcom/android/server/pm/PackageManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 4934
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 4937
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_ON"

    .line 4939
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x1

    goto :goto_14

    :cond_e
    const-string p2, "com.samsung.android.intent.action.REQUEST_COOLDOWN_INSTALL_OFF"

    .line 4941
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4944
    :goto_14
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSpeg(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SpegService;

    move-result-object p2

    if-eqz p2, :cond_25

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmSpeg(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/SpegService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/SpegService;->setSmartSwitchState(Z)V

    .line 4945
    :cond_25
    sget-boolean p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez p0, :cond_36

    .line 4946
    const-class p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    .line 4947
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    if-eqz p0, :cond_36

    .line 4948
    invoke-virtual {p0, p1}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->setSmartSwitchState(Z)V

    :cond_36
    return-void
.end method
