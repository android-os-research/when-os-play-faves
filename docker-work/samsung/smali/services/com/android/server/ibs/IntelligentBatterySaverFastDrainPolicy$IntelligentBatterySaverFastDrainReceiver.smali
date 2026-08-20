.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverFastDrainReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 2

    .line 990
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_67

    .line 993
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_67

    .line 996
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    goto :goto_39

    :sswitch_19
    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_39

    :cond_22
    const/4 p2, 0x2

    goto :goto_39

    :sswitch_24
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_39

    :cond_2d
    const/4 p2, 0x1

    goto :goto_39

    :sswitch_2f
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 p2, 0x0

    :goto_39
    packed-switch p2, :pswitch_data_76

    goto :goto_67

    .line 1005
    :pswitch_3d
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msendExitFastDrainRestrictionMessage(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    goto :goto_67

    .line 998
    :pswitch_43
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmAlarmManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager;

    move-result-object p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmTimeoutAlarmListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 999
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmAlarmManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmTimeoutAlarmListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1001
    :cond_62
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mupdateActivated(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    :cond_67
    :goto_67
    return-void

    :sswitch_data_68
    .sparse-switch
        0x1e1f7f95 -> :sswitch_2f
        0x741706da -> :sswitch_24
        0x79950caa -> :sswitch_19
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method
