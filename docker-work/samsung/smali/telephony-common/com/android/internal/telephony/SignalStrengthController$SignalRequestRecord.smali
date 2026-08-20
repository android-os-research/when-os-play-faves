.class Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;
.super Ljava/lang/Object;
.source "SignalStrengthController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SignalStrengthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalRequestRecord"
.end annotation


# instance fields
.field final blacklist mCallingUid:I

.field final blacklist mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

.field final blacklist mSubId:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SignalStrengthController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SignalStrengthController;IILandroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5

    .line 919
    iput-object p1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->this$0:Lcom/android/internal/telephony/SignalStrengthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput p3, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    .line 921
    iput p2, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    .line 922
    iput-object p4, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->this$0:Lcom/android/internal/telephony/SignalStrengthController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied record="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SignalStrengthController;->-$$Nest$mlocalLog(Lcom/android/internal/telephony/SignalStrengthController;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->this$0:Lcom/android/internal/telephony/SignalStrengthController;

    iget v1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    iget v2, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/SignalStrengthController;->clearSignalStrengthUpdateRequest(IILandroid/telephony/SignalStrengthUpdateRequest;Landroid/os/Message;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 933
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SignalRequestRecord {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "mSubId="

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " mCallingUid="

    .line 935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " mRequest="

    .line 936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/internal/telephony/SignalStrengthController$SignalRequestRecord;->mRequest:Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 937
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
