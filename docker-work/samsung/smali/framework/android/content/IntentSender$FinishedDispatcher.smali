.class Landroid/content/IntentSender$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "IntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedDispatcher"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIntent:Landroid/content/Intent;

.field private final greylist-max-o mIntentSender:Landroid/content/IntentSender;

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Ljava/lang/String;

.field private greylist-max-o mResultExtras:Landroid/os/Bundle;

.field private final greylist-max-o mWho:Landroid/content/IntentSender$OnFinished;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .registers 4
    .param p1, "pi"    # Landroid/content/IntentSender;
    .param p2, "who"    # Landroid/content/IntentSender$OnFinished;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 116
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    .line 118
    iput-object p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    .line 119
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method


# virtual methods
.method public greylist-max-o performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "serialized"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .line 123
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 124
    iput p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    .line 125
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 127
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 128
    invoke-virtual {p0}, Landroid/content/IntentSender$FinishedDispatcher;->run()V

    goto :goto_13

    .line 130
    :cond_10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :goto_13
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 134
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    iget-object v1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    iget-object v2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/content/IntentSender$OnFinished;->onSendFinished(Landroid/content/IntentSender;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 136
    return-void
.end method
