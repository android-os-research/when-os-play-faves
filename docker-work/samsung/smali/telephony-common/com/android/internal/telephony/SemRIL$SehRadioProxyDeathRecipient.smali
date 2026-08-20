.class final Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "SemRIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SehRadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    const-string v1, "serviceDied"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL$SehRadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRilHandler:Lcom/android/internal/telephony/SemRIL$SemRilHandler;

    .line 305
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
