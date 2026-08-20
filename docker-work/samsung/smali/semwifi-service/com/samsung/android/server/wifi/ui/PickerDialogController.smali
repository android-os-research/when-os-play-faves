.class public Lcom/samsung/android/server/wifi/ui/PickerDialogController;
.super Ljava/lang/Object;
.source "PickerDialogController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifi.PickerDialog"

.field private static final WIFI_PICKER_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.WifiPickerDialog"


# instance fields
.field private final context:Landroid/content/Context;

.field private isTracking:Z

.field private final quickPanelPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sMLUUPyRAXd6VgEP_Xl8ptrRun8(Lcom/samsung/android/server/wifi/ui/PickerDialogController;Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->lambda$new$0(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->context:Landroid/content/Context;

    .line 41
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->quickPanelPackages:Ljava/util/Set;

    const-string v0, "com.android.systemui"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.sec.android.dexsystemui"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p1, Lcom/samsung/android/server/wifi/ui/PickerDialogController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ui/PickerDialogController;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;ZZ)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    .line 49
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->quickPanelPackages:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 52
    :cond_c
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->setEnableTracking(Z)V

    return-void
.end method

.method private startPickerDialog()V
    .registers 5

    const-string v0, "SemWifi.PickerDialog"

    const-string v1, "starting Wi-Fi picker dialog"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.wifi.WifiPickerDialog"

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    :try_start_19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    const-string p0, "could not start Wi-Fi picker dialog"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method


# virtual methods
.method public disableTracking()V
    .registers 2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->setEnableTracking(Z)V

    return-void
.end method

.method public isTracking()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    return p0
.end method

.method public setEnableTracking(Z)V
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string v1, "start"

    goto :goto_c

    :cond_a
    const-string v1, "stop"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tracking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifi.PickerDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    return-void
.end method

.method public showPickerDialogIfNecessary()V
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking:Z

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->startPickerDialog()V

    :cond_a
    return-void
.end method
