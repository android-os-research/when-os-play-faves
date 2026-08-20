.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 191
    monitor-enter p1

    .line 192
    :try_start_3
    iput-object p2, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    .line 193
    iget-object p0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit p1

    goto :goto_13

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0

    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/AsyncResult;

    .line 96
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    .line 98
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_1e0

    goto/16 :goto_1df

    .line 175
    :pswitch_14
    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_41

    .line 177
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get SIM file status info : = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v6

    iput v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    goto :goto_45

    .line 180
    :cond_41
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iput v6, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    .line 183
    :goto_45
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    goto/16 :goto_1df

    .line 147
    :pswitch_4a
    check-cast v0, Landroid/os/AsyncResult;

    .line 148
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_ac

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordInfo:[I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_RECORD_INFO_DONEtotal cnt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordInfo:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "used  cnt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordInfo:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "first index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordInfo:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "text max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordInfo:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "number max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordInfo:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 159
    :cond_ac
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    goto/16 :goto_1df

    .line 163
    :pswitch_b1
    check-cast v0, Landroid/os/AsyncResult;

    .line 164
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_e0

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsimPhonebookCapaInfo ar.result length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v1, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>([I)V

    iput-object v1, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    goto :goto_e4

    .line 168
    :cond_e0
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iput-object v5, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    .line 171
    :goto_e4
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    goto/16 :goto_1df

    .line 115
    :pswitch_e9
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_ee

    goto :goto_ef

    :cond_ee
    move v4, v6

    :goto_ef
    if-nez v4, :cond_119

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->toApplicationError()I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mReturnIndex:I

    .line 120
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UPDATE_DONE - failed; ex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_15a

    .line 123
    :cond_119
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mReturnIndex:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_UPDATE_DONE : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mReturnIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->-$$Nest$fgetmCurrentEfid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)I

    move-result p1

    const/16 v0, 0x6f3b

    if-ne p1, v0, :cond_15a

    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v0, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mReturnIndex:I

    if-ltz v0, :cond_15a

    .line 127
    invoke-static {p1, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->-$$Nest$fputmCurrentEfid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V

    .line 128
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object p1, p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->fetchFdnList()V

    .line 131
    :cond_15a
    :goto_15a
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->-$$Nest$fputmCurrentEfid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V

    .line 133
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    goto/16 :goto_1df

    .line 137
    :pswitch_168
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_172

    .line 138
    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    goto :goto_18a

    .line 140
    :cond_172
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LOAD_DONE: Cannot load ADN records; ex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 143
    :goto_18a
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    goto :goto_1df

    .line 101
    :pswitch_18e
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1c4

    .line 102
    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, [I

    .line 106
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_RECORD_SIZE Size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " #record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1dc

    .line 110
    :cond_1c4
    iget-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_SIZE_DONE: failed; ex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 112
    :goto_1dc
    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;Ljava/lang/Object;)V

    :goto_1df
    return-void

    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_18e
        :pswitch_168
        :pswitch_e9
        :pswitch_b1
        :pswitch_4a
        :pswitch_14
    .end packed-switch
.end method
