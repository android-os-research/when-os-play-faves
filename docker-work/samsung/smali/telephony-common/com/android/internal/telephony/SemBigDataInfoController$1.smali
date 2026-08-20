.class Lcom/android/internal/telephony/SemBigDataInfoController$1;
.super Landroid/content/BroadcastReceiver;
.source "SemBigDataInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemBigDataInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemBigDataInfoController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemBigDataInfoController;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemBigDataInfoController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_264

    const-string p1, "simslot"

    .line 137
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v4, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {v4}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemBigDataInfoController;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-ne p1, v4, :cond_264

    .line 138
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v4, "feature"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v3, "bigdata_info"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BIG_DATA insertLog slot: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemBigDataInfoController;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", feature: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "Modem"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 146
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p1

    const/16 p2, 0x1000

    const/4 v1, 0x2

    if-eq p1, p2, :cond_210

    const/16 p2, 0x1001

    if-eq p1, p2, :cond_1fc

    packed-switch p1, :pswitch_data_2da

    .line 261
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 246
    :pswitch_aa
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "TFEI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 243
    :pswitch_b3
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "SCGC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 239
    :pswitch_bc
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "MMWF"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 236
    :pswitch_ca
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$minsertLogToBatteryStatsService(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    return-void

    .line 233
    :pswitch_d4
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "SCGF"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 229
    :pswitch_dd
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "ENST"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 226
    :pswitch_eb
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "UCSI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 222
    :pswitch_f4
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "INTG"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 219
    :pswitch_102
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "PMLI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 216
    :pswitch_10b
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "MUTE"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 213
    :pswitch_114
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "RFPD"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 210
    :pswitch_11d
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "MMRJ"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 207
    :pswitch_126
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "NSVC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 203
    :pswitch_12f
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "RLFI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 199
    :pswitch_13d
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "RFDV"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 195
    :pswitch_14b
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "MIPI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 191
    :pswitch_159
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "RLFC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 186
    :pswitch_167
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "SIMD"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto/16 :goto_223

    .line 183
    :pswitch_17c
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "ATTI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 180
    :pswitch_185
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "ATTF"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 177
    :pswitch_18e
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "ATTS"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 174
    :pswitch_197
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "PDPI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 171
    :pswitch_1a0
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "PDPF"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 168
    :pswitch_1a9
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "PDPS"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 165
    :pswitch_1b2
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "SMSI"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 162
    :pswitch_1ba
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "SMSF"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 159
    :pswitch_1c2
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "SMSS"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 156
    :pswitch_1ca
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "CRSH"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 152
    :pswitch_1d2
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "DROP"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$mpreLogDROP(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 148
    :pswitch_1e7
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "CEND"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$mpreLogCEND(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 256
    :cond_1fc
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "TTSC"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 258
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "Network Timezone"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    goto :goto_223

    .line 250
    :cond_210
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "TTZS"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 252
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p2, "Telephony"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;)V

    .line 265
    :goto_223
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$misSemHqmEnable(Lcom/android/internal/telephony/SemBigDataInfoController;)Z

    move-result p1

    if-nez p1, :cond_230

    .line 266
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 269
    :cond_230
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_23f

    const-string p0, "BIG_DATA Feature is undefined. Don\'t send Big Data"

    .line 270
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d8

    .line 272
    :cond_23f
    iget-object v1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataComId(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataFeature(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataInfo(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetsBigDataAction(Lcom/android/internal/telephony/SemBigDataInfoController;)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBigDataPath(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result v7

    const-string v3, "com.android.internal.telephony"

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$minsertLog(Lcom/android/internal/telephony/SemBigDataInfoController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2d8

    .line 274
    :cond_264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c1

    .line 275
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v0, "plugged"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryVoltage(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 278
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p1

    if-ne p1, v2, :cond_29c

    const-string p1, "hv_charger"

    .line 279
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_29c

    .line 280
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_2b5

    .line 281
    :cond_29c
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-static {p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fgetmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b5

    const-string p1, "online"

    .line 282
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2b5

    .line 284
    iget-object p1, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryChargeType(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    .line 287
    :cond_2b5
    :goto_2b5
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p1, "status"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputmBatteryStatus(Lcom/android/internal/telephony/SemBigDataInfoController;I)V

    goto :goto_2d8

    .line 288
    :cond_2c1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sec.intent.action.networkdiagnostic.UT_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d8

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/SemBigDataInfoController$1;->this$0:Lcom/android/internal/telephony/SemBigDataInfoController;

    const-string p1, "ut-mode"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemBigDataInfoController;->-$$Nest$fputbUtMode(Lcom/android/internal/telephony/SemBigDataInfoController;Z)V

    :cond_2d8
    :goto_2d8
    return-void

    nop

    :pswitch_data_2da
    .packed-switch 0x0
        :pswitch_1e7
        :pswitch_1d2
        :pswitch_1ca
        :pswitch_1c2
        :pswitch_1ba
        :pswitch_1b2
        :pswitch_1a9
        :pswitch_1a0
        :pswitch_197
        :pswitch_18e
        :pswitch_185
        :pswitch_17c
        :pswitch_167
        :pswitch_159
        :pswitch_14b
        :pswitch_13d
        :pswitch_12f
        :pswitch_126
        :pswitch_11d
        :pswitch_114
        :pswitch_10b
        :pswitch_102
        :pswitch_f4
        :pswitch_eb
        :pswitch_dd
        :pswitch_d4
        :pswitch_ca
        :pswitch_bc
        :pswitch_b3
        :pswitch_aa
    .end packed-switch
.end method
