.class public Lcom/android/server/enterprise/kioskmode/KioskModeService$5;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2

    .line 866
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 870
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "KioskModeService"

    if-ne p2, v1, :cond_22

    const-string p0, "can\'t get user id"

    .line 873
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 877
    :cond_22
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 878
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 882
    :try_start_30
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    const-wide/16 v2, 0x80

    invoke-interface {p1, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_59

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not installed at userId : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_58} :catch_59

    return-void

    .line 895
    :catch_59
    :cond_59
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$fgetmAppPolicy(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result p1

    if-nez p1, :cond_80

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disabled by admin"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    return-void

    .line 905
    :cond_80
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mgetDefaultHomeScreen(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    .line 906
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    :cond_91
    return-void
.end method
