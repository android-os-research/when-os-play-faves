.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SleepModeAction"
.end annotation


# instance fields
.field public final btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final mContext:Landroid/content/Context;

.field public final masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

.field public final wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V
    .registers 4

    .line 893
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 895
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 927
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 969
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$3;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 995
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1021
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$5;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1049
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 1074
    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$7;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    return-void
.end method


# virtual methods
.method public registerAction()V
    .registers 4

    .line 1105
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v2, "PMS_SleepModeAction"

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1106
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v2, "GPS_SleepModeAction"

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v2, "Wifi_SleepModeAction"

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1108
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v2, "BlueTooth_SleepModeAction"

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v2, "Nearby_SleepModeAction"

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1110
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v2, "MasterSync_SleepModeAction"

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    const-string v1, "Notification_SleepModeAction"

    invoke-static {v0, v1, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    return-void
.end method
