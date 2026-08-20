.class Lcom/android/internal/telephony/SmsDispatchersController$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsDispatchersController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsDispatchersController;)V
    .registers 2

    .line 1874
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.ims.dm.DM_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "SmsDispatchersController"

    if-eqz v2, :cond_69

    const-string v2, "receive ACTION_DM_CHANGED"

    .line 1878
    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v4, "phoneId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_3c1

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1880
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    const-string v3, "VZW"

    const-string v4, "USCC"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c1

    const-string v2, "item"

    .line 1881
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c1

    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c1

    .line 1882
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "DCN_NUMBER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c1

    .line 1883
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setDcnAddress(Ljava/lang/String;)V

    goto/16 :goto_3c1

    .line 1885
    :cond_69
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.action.SIM_REFRESH_INIT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_96

    const-string v1, "ACTION_SIM_REFRESH_INIT"

    .line 1886
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fputmSmsc(Lcom/android/internal/telephony/SmsDispatchersController;Ljava/lang/String;)V

    .line 1888
    invoke-static {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfputretryGetSmsc(I)V

    .line 1889
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmCi(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    goto/16 :goto_3c1

    .line 1890
    :cond_96
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "android.intent.action.LTE_SMS_STATUS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string v2, "ltesms"

    .line 1891
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c1

    .line 1892
    iget-object v5, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v5, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fputmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;I)V

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lte sms status is updated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmLteSmsStatus(Lcom/android/internal/telephony/SmsDispatchersController;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c1

    .line 1895
    :cond_cf
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_21d

    const-string v2, "ACTION_CUSTOMER_TEST_RESPONSE"

    .line 1896
    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mode"

    .line 1897
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "moretosend"

    .line 1898
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1899
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moretosend : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "bypass_ap_cp"

    .line 1901
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c1

    const-string v2, "result"

    .line 1902
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1903
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_127

    .line 1904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total segment result : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_127
    :try_start_127
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1909
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1913
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc8

    const/16 v11, 0x61

    const/16 v12, 0x11

    if-le v9, v10, :cond_1de

    move v13, v3

    :goto_13e
    if-le v9, v10, :cond_18f

    .line 1918
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1919
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1921
    invoke-virtual {v15, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1922
    invoke-virtual {v15, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit16 v10, v13, 0xc8

    .line 1924
    invoke-virtual {v1, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1925
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x4

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1926
    invoke-virtual {v15, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1928
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v3, v13, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    add-int/lit16 v9, v9, -0xc8

    .line 1931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remaining length : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v10

    const/4 v3, 0x0

    const/16 v10, 0xc8

    goto :goto_13e

    .line 1933
    :cond_18f
    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1934
    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/2addr v9, v13

    .line 1935
    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1936
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "last segment : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", len : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1938
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz v7, :cond_1cb

    move v3, v6

    goto :goto_1cc

    :cond_1cb
    const/4 v3, 0x0

    .line 1939
    :goto_1cc
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1940
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_3c1

    .line 1942
    :cond_1de
    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1943
    invoke-virtual {v8, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1944
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v6

    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1945
    invoke-virtual {v8, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz v7, :cond_1f5

    move v3, v6

    goto :goto_1f6

    :cond_1f5
    const/4 v3, 0x0

    .line 1946
    :goto_1f6
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1947
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_206} :catch_208

    goto/16 :goto_3c1

    .line 1950
    :catch_208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in CP_BYPASS. total segment result : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1954
    :cond_21d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ec

    const-string v2, "ss"

    .line 1955
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "LOADED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ba

    .line 1956
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SmsDispatchersController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetPHONE_ON_KEY()[Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v5}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    aget-object v3, v3, v5

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB]  sBootCompleted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsBootCompleted()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v6, :cond_29e

    .line 1959
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v5, "phone"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_3c1

    if-ne v2, v6, :cond_3c1

    const-string v1, "[CB] SimState is on"

    .line 1961
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[CB] MultiSIM device broadcastCbSettingsAvailable in SIM state-loaded"

    .line 1962
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V

    goto/16 :goto_3c1

    .line 1967
    :cond_29e
    invoke-static {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfputsSimLoaded(Z)V

    if-ne v2, v6, :cond_3c1

    .line 1968
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_3c1

    const-string v1, "[CB] SimState is on and device booting completed"

    .line 1969
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[CB] SingleSim device broadcastCbSettingsAvailable in SIM state-loaded"

    .line 1970
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V

    goto/16 :goto_3c1

    .line 1974
    :cond_2ba
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c1

    .line 1975
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    const-string v2, "sms_not_receive_cmas_without_sim"

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c1

    .line 1976
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_2e5

    .line 1978
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->clearCellBroadcastRangeManager()V

    goto/16 :goto_3c1

    :cond_2e5
    const-string v0, "iccSmsInterfaceMgr is null"

    .line 1980
    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c1

    .line 1983
    :cond_2ec
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_359

    .line 1984
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SmsDispatchersController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetPHONE_ON_KEY()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "receive android.intent.action.BOOT_COMPLETED"

    .line 1985
    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-static {v6}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfputsBootCompleted(Z)V

    .line 1987
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v6, :cond_3c1

    .line 1988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sSimLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsSimLoaded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v6, :cond_3c1

    .line 1989
    invoke-static {}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$sfgetsSimLoaded()Z

    move-result v1

    if-eqz v1, :cond_3c1

    const-string v1, "[CB] SimState is on && SIM Loaded"

    .line 1990
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[CB] SingleSim device broadcastCbSettingsAvailable in Booting Completed"

    .line 1991
    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$mbroadcastCbSettingsAvailable(Lcom/android/internal/telephony/SmsDispatchersController;)V

    goto :goto_3c1

    .line 1995
    :cond_359
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.action.DEFAULT_MSG_APP_INFO_LOGGING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38e

    const-string v2, "defaultMsgAppConfigInfo"

    .line 1996
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1997
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsApplication - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3c1

    .line 1998
    :cond_38e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.intent.action.EMERGENCY_SMS_SEARCH_READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c1

    .line 1999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.samsung.intent.action.EMERGENCY_SMS_SEARCH_READY phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v0, v0, Lcom/android/internal/telephony/SmsDispatchersController$2;->this$0:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->-$$Nest$fgetmImsSmsDispatcher(Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendPendingEmergencySms()V

    :cond_3c1
    :goto_3c1
    return-void
.end method
