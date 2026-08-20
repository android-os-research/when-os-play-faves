.class public Lcom/android/server/enterprise/kioskmode/KioskModeService$6;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver(I)V
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

    .line 946
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 949
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "KioskModeService"

    if-ne p1, v0, :cond_19

    const-string v0, "can\'t get user id"

    .line 952
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_19
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 956
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 961
    :try_start_27
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x80

    invoke-interface {v1, v0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_50

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not installed at userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4f} :catch_50

    return-void

    .line 974
    :catch_50
    :cond_50
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$fgetmAppPolicy(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_77

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is disabled by admin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    return-void

    :cond_77
    if-eqz v0, :cond_8a

    .line 983
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 984
    invoke-static {p2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mgetDefaultHomeScreen(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;

    move-result-object p2

    .line 983
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8a

    .line 985
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$6;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mforceTerminateKiosk(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    :cond_8a
    return-void
.end method
