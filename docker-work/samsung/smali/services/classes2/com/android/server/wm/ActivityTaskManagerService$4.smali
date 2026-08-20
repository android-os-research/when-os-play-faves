.class public Lcom/android/server/wm/ActivityTaskManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 1206
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 1212
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    const-string p2, "check_cooldown_level"

    const/4 v0, -0x1

    .line 1216
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v0, :cond_20

    .line 1218
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    :cond_20
    const-string p2, "batt_temp_level"

    .line 1220
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v0, :cond_2c

    .line 1222
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 1224
    :cond_2c
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const v1, 0x10403cd

    const-string/jumbo v2, "overheat_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmOverheatTextId(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 1226
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    if-ne v1, v0, :cond_45

    iget p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-eq p2, v0, :cond_61

    :cond_45
    const-string p2, "check_cooldown_list"

    .line 1227
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 1228
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fgetmCheckSIOPLevelList(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1230
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->-$$Nest$fputmCheckSIOPLevelList(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/HashMap;)V

    .line 1233
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VZWLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", OverheatLevel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$4;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "checkingSIOP"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void
.end method
