.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;
.super Landroid/os/Handler;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverFastDrainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 1083
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 1084
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1089
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "IntelligentBatterySaverFastDrainPolicy"

    packed-switch v0, :pswitch_data_d4

    :pswitch_9
    goto/16 :goto_d2

    .line 1138
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mbootCompleted(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    goto/16 :goto_d2

    .line 1134
    :pswitch_12
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1135
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSysState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msetSysState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    goto/16 :goto_d2

    .line 1130
    :pswitch_21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1131
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmSysState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result v0

    or-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msetSysState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    goto/16 :goto_d2

    .line 1117
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$misCheckBatteryDropState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$misFastDrainRestrictionOn(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1118
    :cond_3f
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mcheckBatteryInfo(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;II)V

    goto/16 :goto_d2

    .line 1122
    :pswitch_4a
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mtestState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)Z

    move-result p1

    if-nez p1, :cond_59

    .line 1123
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mcheckMusicSafe(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1125
    :cond_59
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mtestState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)Z

    move-result p1

    if-nez p1, :cond_d2

    .line 1126
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mcheckDownloadSafe(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    goto :goto_d2

    .line 1109
    :pswitch_69
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result p1

    if-ne p1, v1, :cond_d2

    .line 1110
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mexitFastDrainRestriction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1111
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fputmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    const-string/jumbo p1, "move to off state, message"

    .line 1112
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto :goto_d2

    .line 1094
    :pswitch_8b
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_d2

    .line 1095
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$menterFastDrainRestriction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1096
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fputmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    const-string/jumbo p1, "move to state on, message"

    .line 1097
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto :goto_d2

    .line 1102
    :pswitch_ae
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mstop(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    .line 1103
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fputmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V

    const-string/jumbo p1, "stop, move to off state, message"

    .line 1104
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 1106
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mresetBatteryInfo(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    goto :goto_d2

    .line 1091
    :pswitch_cd
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mstart(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    :cond_d2
    :goto_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_ae
        :pswitch_8b
        :pswitch_69
        :pswitch_4a
        :pswitch_2f
        :pswitch_9
        :pswitch_21
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method
