.class public Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .registers 4

    .line 137
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 143
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mconvertMsg(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch p1, :pswitch_data_148

    :pswitch_28
    goto/16 :goto_147

    .line 206
    :pswitch_2a
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "session is timed out!"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0x1f

    invoke-static {p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mreplayAuthfail(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 208
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_147

    .line 203
    :pswitch_42
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_147

    .line 200
    :pswitch_49
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_147

    .line 197
    :pswitch_50
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStartSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_147

    .line 184
    :pswitch_57
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionEventListener(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 185
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionEventListener(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {p1, v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 186
    :cond_6b
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fputmTurnedOffWhileRunning(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    .line 187
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fputmSessionThread(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)V

    .line 188
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionThread(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 189
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz p1, :cond_8e

    .line 190
    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 191
    :cond_8e
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$msetState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    goto/16 :goto_147

    .line 181
    :pswitch_95
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mconnect(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_147

    .line 172
    :pswitch_9c
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result p1

    if-ne p1, v2, :cond_147

    .line 173
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Connectivity is turned off while authentication is running!"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fputmTurnedOffWhileRunning(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_147

    .line 163
    :pswitch_b4
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmTeardownRequested(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 164
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmTeardownRequested(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_147

    .line 168
    :cond_d6
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Connectivity is disabled by user"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 148
    :pswitch_e0
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmTeardownRequested(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_127

    .line 149
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz p1, :cond_121

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object p1

    if-eqz p1, :cond_121

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 150
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result p1

    if-eqz p1, :cond_121

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 151
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result p1

    if-nez p1, :cond_121

    .line 153
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mreplayAuthfail(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 154
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_147

    .line 156
    :cond_121
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fputmInternalState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    goto :goto_147

    .line 157
    :cond_127
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmConnectAfterEnable(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_147

    .line 158
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mconnect(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 159
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmConnectAfterEnable(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_147

    .line 178
    :pswitch_142
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleSetConnection(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_147
    :goto_147
    return-void

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_142
        :pswitch_28
        :pswitch_e0
        :pswitch_b4
        :pswitch_9c
        :pswitch_28
        :pswitch_95
        :pswitch_57
        :pswitch_28
        :pswitch_28
        :pswitch_50
        :pswitch_49
        :pswitch_42
        :pswitch_2a
    .end packed-switch
.end method
