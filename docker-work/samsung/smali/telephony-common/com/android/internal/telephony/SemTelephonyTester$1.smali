.class Lcom/android/internal/telephony/SemTelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "SemTelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemTelephonyTester;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemTelephonyTester;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive - action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    const-string v3, "com.samsung.intent.action.SET_PREFERRED_NETWORK_TYPE_TEST"

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p1, v1, :cond_318

    const/16 p1, 0x1b

    const-string v0, "networktype"

    .line 169
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 170
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networktype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p1

    int-to-long p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto/16 :goto_318

    :cond_64
    const-string v3, "com.samsung.intent.action.TELEPHONY_FEATURES_CHECK_TEST"

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->dump(I)V

    goto/16 :goto_318

    :cond_7b
    const-string v3, "com.samsung.intent.action.SEM_MMI_CODE_HELPER_TEST"

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 176
    invoke-static {p1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->checkServiceClassToString(Landroid/content/Context;)V

    .line 177
    invoke-static {p1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->checkForwardingTypeToString(Landroid/content/Context;)V

    .line 178
    invoke-static {p1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->checkBarringTypeToString(Landroid/content/Context;)V

    goto/16 :goto_318

    :cond_8e
    const-string v3, "com.samsung.intent.action.FORMATNUMBER_TEST"

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    const-string p1, "pn"

    .line 180
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pn164"

    .line 181
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso"

    .line 182
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ", countryIso: "

    if-nez v1, :cond_132

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b8

    goto/16 :goto_132

    .line 186
    :cond_b8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "result: "

    const-string v4, "phoneNumber: "

    if-eqz v1, :cond_f6

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto/16 :goto_318

    .line 190
    :cond_f6
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", phoneNumberE164: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto/16 :goto_318

    .line 185
    :cond_132
    :goto_132
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong parameter - phoneNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto/16 :goto_318

    :cond_150
    const-string v3, "com.samsung.intent.action.CARRIER_ID_FROM_MCCMNC_TEST"

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18a

    const-string v0, "mccmnc"

    .line 194
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 195
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getCarrierIdFromMccMnc(Ljava/lang/String;)I

    move-result p1

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mccmnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", carrierIdFromMccMnc: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto/16 :goto_318

    :cond_18a
    const-string v3, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_ENTER_TEST"

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p1, v1, :cond_318

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/16 p2, 0x19

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_318

    :cond_1b7
    const-string v3, "com.samsung.intent.action.ALL_CELL_INFO_TEST"

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 203
    :try_start_1bf
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1f4

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_318

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CellInfo;

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto :goto_1d1

    .line 209
    :cond_1f4
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    const-string p2, "No CellInfo"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V
    :try_end_1fb
    .catch Ljava/lang/SecurityException; {:try_start_1bf .. :try_end_1fb} :catch_1fd

    goto/16 :goto_318

    :catch_1fd
    move-exception p1

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllCellInfo is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto/16 :goto_318

    :cond_216
    const-string v3, "com.samsung.intent.action.HAS_CALL_TEST"

    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_237

    .line 215
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p1, v1, :cond_318

    const-string p1, "count"

    .line 216
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mhasCallTest(Lcom/android/internal/telephony/SemTelephonyTester;I)V

    goto/16 :goto_318

    :cond_237
    const-string v2, "com.samsung.intent.action.SIMULATE_NETWORK_EMERGENCY_NUMBER_TEST"

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24f

    const-string p1, "testNumber"

    .line 220
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    goto/16 :goto_318

    :cond_24f
    const-string p2, "com.samsung.intent.action.DIAL_STRING_REPLACE_TEST"

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2cc

    const-string p2, "carrier_config"

    .line 229
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_318

    .line 232
    :try_start_261
    new-instance p2, Landroid/os/PersistableBundle;

    invoke-direct {p2}, Landroid/os/PersistableBundle;-><init>()V

    const-string v0, "dial_string_replace_string_array"

    const-string v1, "*611:+19085594899"

    const-string v2, "*86:+1MDN"

    .line 233
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/telephony/CarrierConfigManager;->overrideConfig(ILandroid/os/PersistableBundle;)V

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive - Update dial_string_replace_string_array for subId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V
    :try_end_2a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_261 .. :try_end_2a0} :catch_2a2

    goto/16 :goto_318

    :catch_2a2
    move-exception p1

    .line 237
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive - Can\'t update dial_string_replace_string_array for subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    goto :goto_318

    :cond_2cc
    const-string p1, "com.samsung.intent.action.UT_TEST"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e7

    .line 241
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p1, v1, :cond_318

    .line 242
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_318

    :cond_2e7
    const-string p1, "com.samsung.intent.action.DRX_TEST"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_302

    .line 245
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-ne p1, v1, :cond_318

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_318

    .line 249
    :cond_302
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester$1;->this$0:Lcom/android/internal/telephony/SemTelephonyTester;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive - unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->-$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V

    :cond_318
    :goto_318
    return-void
.end method
