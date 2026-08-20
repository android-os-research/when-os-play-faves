.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    .line 9911
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 9914
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    const/4 v0, 0x4

    const-string/jumbo v2, "wifi_state"

    .line 9915
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1bb

    .line 9917
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiConfigure()Z

    move-result p2

    if-eqz p2, :cond_1bb

    .line 9918
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiEap()Z

    move-result p2

    if-nez p2, :cond_32

    .line 9919
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mconfigureWifi(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 9921
    :cond_32
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetwifiPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mconfigureWifi(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9923
    :goto_43
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfputwifiConfigure(Z)V

    goto/16 :goto_1bb

    .line 9927
    :cond_48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "connected"

    .line 9928
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1bb

    .line 9929
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result p2

    if-eqz p2, :cond_1bb

    .line 9930
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mstartStopUsbNet(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;)V

    goto/16 :goto_1bb

    .line 9933
    :cond_6b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8c

    .line 9934
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmPhoneStatusBarInit(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result p1

    if-nez p1, :cond_1bb

    .line 9935
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fputmPhoneStatusBarInit(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)V

    .line 9936
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$minitialiseSystemUi(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto/16 :goto_1bb

    .line 9939
    :cond_8c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    const-string/jumbo p1, "plugged"

    .line 9940
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_a6

    .line 9942
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfputusbPlugged(Z)V

    goto/16 :goto_1bb

    .line 9944
    :cond_a6
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfgetusbPlugged()Z

    move-result p1

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getForceAutoShutDownState()I

    move-result p1

    if-ne p1, v0, :cond_bc

    .line 9945
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfputusbPlugged(Z)V

    .line 9946
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I

    .line 9948
    :cond_bc
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfputusbPlugged(Z)V

    goto/16 :goto_1bb

    .line 9951
    :cond_c1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 9952
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfputisDesktopMode(Z)V

    goto/16 :goto_1bb

    .line 9954
    :cond_d2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 9955
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$sfputisDesktopMode(Z)V

    goto/16 :goto_1bb

    .line 9957
    :cond_e3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.samsung.android.knox.intent.action.SCREEN_OFF_HOME_LONG_PRESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 9958
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 9959
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_1bb

    .line 9960
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_1bb

    .line 9963
    :cond_10d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.samsung.android.knox.intent.action.RECENT_LONG_PRESS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_189

    .line 9964
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressMode()I

    move-result p1

    if-ne p1, v0, :cond_138

    .line 9967
    :try_start_121
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    .line 9968
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$misDefaultLauncher(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;)Z

    move-result p1
    :try_end_135
    .catch Ljava/lang/NullPointerException; {:try_start_121 .. :try_end_135} :catch_137
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_135} :catch_137

    if-nez p1, :cond_13b

    :catch_137
    return-void

    :cond_138
    const/4 p2, 0x2

    if-ne p1, p2, :cond_188

    .line 9982
    :cond_13b
    :try_start_13b
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    .line 9984
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_159

    .line 9986
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_16b

    .line 9988
    :cond_159
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 9989
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v2

    :goto_16b
    if-eqz p1, :cond_1bb

    const-string p2, "android.intent.action.MAIN"

    .line 9992
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 9993
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.LAUNCHER"

    .line 9994
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9995
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_187} :catch_188

    goto :goto_1bb

    :catch_188
    :cond_188
    return-void

    .line 10001
    :cond_189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.knox.intent.action.KNOX_NDA_LICENSE_CLEARED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1bb

    const-string p1, "KNOX_NDA_LICENSE_CLEARED"

    const-string p2, "One of the license info removed"

    .line 10002
    invoke-static {p1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10005
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmKLM(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p2

    const-string v0, ""

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1bb

    const-string p2, "All license already revoked, so Clear all configurations"

    .line 10006
    invoke-static {p1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10007
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mclearAllApplicationRestrictions(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    .line 10008
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setKnoxNDALicenseActivated(Z)V

    :cond_1bb
    :goto_1bb
    return-void
.end method
