.class public Lcom/android/server/trust/TrustAgentWrapper$4;
.super Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BI)V
    .registers 5

    .line 358
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_51

    .line 363
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding escrow token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2f
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "escrow_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 366
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 360
    :cond_51
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token API is not allowed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V
    .registers 8

    .line 321
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTrust("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_31
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    invoke-static {p1, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 326
    invoke-virtual {p0, v0, p4, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string p4, "duration"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 329
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isEscrowTokenActive(JI)V
    .registers 6

    .line 372
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 377
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checking the state of escrow token on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2f
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 380
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "user_id"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 374
    :cond_52
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token API is not allowed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lockUser()V
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConfigureCompleted(ZLandroid/os/IBinder;)V
    .registers 5

    .line 351
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetTrustAgentFeaturesEnabledCompleted(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1d
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeEscrowToken(JI)V
    .registers 6

    .line 386
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 391
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removing escrow token on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_30
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "handle"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 394
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "user_id"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 388
    :cond_53
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token API is not allowed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public revokeTrust()V
    .registers 3

    .line 334
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "TrustAgentWrapper"

    const-string/jumbo v1, "revokeTrust()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_e
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setManagingTrust(Z)V
    .registers 4

    .line 345
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TrustAgentWrapper"

    const-string v1, "managingTrust()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_d
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .line 415
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing keyguard error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1c
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 7

    .line 400
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmContext(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 405
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_30
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$4;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p4

    const-string v0, "handle"

    invoke-virtual {p4, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 409
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "escrow_token"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 410
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 402
    :cond_5c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Escrow token API is not allowed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
