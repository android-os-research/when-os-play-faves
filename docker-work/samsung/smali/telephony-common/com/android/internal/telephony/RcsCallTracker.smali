.class public Lcom/android/internal/telephony/RcsCallTracker;
.super Landroid/os/Handler;
.source "RcsCallTracker.java"


# instance fields
.field blacklist availableConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mActiveConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContext:Landroid/content/Context;

.field blacklist mHoldConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    const-string v0, "RcsCallTracker"

    const-string v1, "Created"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    .line 85
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist analizeAndSendEvents()V
    .registers 11

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_23

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 113
    iget-object v4, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 115
    invoke-direct {p0, v3, v2, v1}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_6

    .line 118
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_45

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 122
    iget-object v5, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 124
    invoke-direct {p0, v4, v2, v1}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_29

    .line 127
    :cond_45
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    const/4 v5, 0x0

    if-nez v1, :cond_5b

    goto :goto_4b

    .line 133
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "analizeAndSendEvents - Connection state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RcsCallTracker"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    move v6, v3

    goto :goto_8a

    .line 138
    :cond_7f
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    move v6, v4

    goto :goto_8a

    :cond_89
    const/4 v6, 0x1

    .line 145
    :goto_8a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v8

    if-nez v8, :cond_92

    move v5, v2

    goto :goto_a5

    .line 147
    :cond_92
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_9c

    move v5, v4

    goto :goto_a5

    .line 149
    :cond_9c
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_a5

    move v5, v3

    :cond_a5
    :goto_a5
    if-ne v5, v6, :cond_b1

    if-ne v5, v3, :cond_ab

    if-eq v6, v3, :cond_b1

    :cond_ab
    const-string v1, "analizeAndSendEvents - Dual notification from modem. skipping notification"

    .line 158
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 162
    :cond_b1
    iget-object v7, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v7, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    if-eq v5, v3, :cond_c6

    if-eq v5, v4, :cond_c0

    goto :goto_cb

    .line 166
    :cond_c0
    iget-object v7, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 169
    :cond_c6
    iget-object v7, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_cb
    invoke-direct {p0, v6, v5, v1}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto/16 :goto_4b

    :cond_d0
    return-void
.end method

.method private blacklist notifyTransition(IILcom/android/internal/telephony/Connection;)V
    .registers 11

    const/4 v0, 0x2

    if-ne p1, p2, :cond_8

    if-ne p2, v0, :cond_7

    if-eq p1, v0, :cond_8

    :cond_7
    return-void

    .line 190
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p3

    const-string v2, "EXTRA_TEL_NUMBER"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object p3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string v2, "EXTRA_PHONE_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTransition - phoneId: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "RcsCallTracker"

    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    const/4 v3, 0x4

    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v5, "EXTRA_CALL_EVENT"

    if-ne p2, v3, :cond_59

    .line 196
    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_59
    const/4 v6, 0x3

    if-ne p2, v6, :cond_65

    .line 201
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_65
    if-ne p2, v0, :cond_72

    if-ne p1, p3, :cond_72

    .line 206
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_72
    if-ne p2, v0, :cond_7f

    if-ne p1, v6, :cond_7f

    .line 211
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_7f
    if-ne p2, v0, :cond_90

    if-ne p1, v0, :cond_90

    .line 218
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "dest == ACTIVE && src == ACTIVE"

    .line 219
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_90
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_3b

    .line 93
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 95
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/RcsCallTracker;->analizeAndSendEvents()V

    :goto_3b
    return-void
.end method
