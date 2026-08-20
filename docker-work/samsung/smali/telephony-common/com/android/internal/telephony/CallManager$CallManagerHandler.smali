.class Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 2

    .line 2084
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$CallManagerHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 2088
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "CallManager"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_2a8

    :pswitch_8
    goto/16 :goto_2a6

    .line 2246
    :pswitch_a
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2242
    :pswitch_17
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2232
    :goto_24
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2a6

    .line 2234
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v0

    .line 2235
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2236
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2237
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2224
    :pswitch_4a
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2220
    :pswitch_57
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2216
    :pswitch_64
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2212
    :pswitch_71
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    :pswitch_7e
    const-string v0, "CallManager: handleMessage (EVENT_MMI_COMPLETE)"

    .line 2207
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2204
    :pswitch_90
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2200
    :pswitch_9d
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2196
    :pswitch_aa
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2192
    :pswitch_b7
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2188
    :pswitch_c4
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2184
    :pswitch_d1
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2180
    :pswitch_de
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2176
    :pswitch_eb
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2172
    :pswitch_f8
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2166
    :pswitch_105
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_2a6

    .line 2167
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2161
    :pswitch_11a
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    .line 2103
    :pswitch_127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2104
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 2106
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_14e

    move-object v4, v0

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2107
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncomingCallAutoRejected()Z

    move-result v4

    if-eqz v4, :cond_14e

    move v4, v6

    goto :goto_14f

    :cond_14e
    move v4, v2

    .line 2115
    :goto_14f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 2121
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetContext(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v7

    if-eqz v7, :cond_1ae

    .line 2122
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v7}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetContext(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v7

    .line 2123
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetContext(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v8

    .line 2124
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetContext(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result v9

    goto :goto_1b1

    :cond_1ae
    move v8, v2

    move v7, v6

    move v9, v7

    .line 2126
    :goto_1b1
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetContext(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getApplicationRestrictionsManager(Landroid/content/Context;)Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v10

    if-eqz v10, :cond_1ce

    .line 2127
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->isApplicationRestrictedForCall(I)Z

    move-result v5

    goto :goto_1cf

    :cond_1ce
    move v5, v2

    .line 2131
    :goto_1cf
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10, v3}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetPhone(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_1e5

    .line 2132
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetPhone(Lcom/android/internal/telephony/CallManager;I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getMsimSubmode()I

    move-result v2

    .line 2134
    :cond_1e5
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_1f9

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mhasMoreThanOneRingingCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    :cond_1f9
    if-nez v4, :cond_1fd

    if-ne v2, v6, :cond_213

    :cond_1fd
    if-eqz v7, :cond_213

    if-nez v8, :cond_213

    if-eqz v9, :cond_213

    if-eqz v5, :cond_206

    goto :goto_213

    .line 2156
    :cond_206
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_2a6

    :cond_213
    :goto_213
    if-nez v9, :cond_230

    .line 2144
    :try_start_215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "#KNOX_FRAMEWORK silently drop incoming call: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_230

    :catch_22e
    move-exception p0

    goto :goto_26a

    :cond_230
    :goto_230
    if-eqz v5, :cond_24a

    .line 2147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "#KNOX_FRAMEWORK_DSC silently drop incoming call: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_24a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "silently drop incoming call: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_269
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_215 .. :try_end_269} :catch_22e

    goto :goto_2a6

    :goto_26a
    const-string p1, "new ringing connection"

    .line 2153
    invoke-static {v1, p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a6

    .line 2095
    :pswitch_270
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2098
    iget-object p1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmSemTelephonyKnoxHelper(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mgetContext(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->sendCallStateChangedIntent(Landroid/content/Context;Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_2a6

    .line 2091
    :pswitch_29b
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_2a6
    :goto_2a6
    return-void

    nop

    :pswitch_data_2a8
    .packed-switch 0x64
        :pswitch_29b
        :pswitch_270
        :pswitch_127
        :pswitch_11a
        :pswitch_105
        :pswitch_f8
        :pswitch_eb
        :pswitch_de
        :pswitch_d1
        :pswitch_c4
        :pswitch_b7
        :pswitch_aa
        :pswitch_9d
        :pswitch_90
        :pswitch_7e
        :pswitch_71
        :pswitch_64
        :pswitch_57
        :pswitch_4a
        :pswitch_24
        :pswitch_17
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
