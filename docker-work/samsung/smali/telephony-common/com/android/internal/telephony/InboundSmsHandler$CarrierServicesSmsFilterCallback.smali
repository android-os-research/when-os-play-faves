.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierServicesSmsFilterCallback"
.end annotation


# instance fields
.field private final blacklist mBlock:Z

.field private final blacklist mDestPort:I

.field private final blacklist mIsClass0:Z

.field private final blacklist mMessageId:J

.field private final blacklist mPdus:[[B

.field private final blacklist mRemainingFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private final blacklist mSmsFormat:Ljava/lang/String;

.field private final blacklist mSubId:I

.field private final blacklist mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field private final blacklist mUserUnlocked:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZIJZLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BI",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;",
            "ZZIJZ",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)V"
        }
    .end annotation

    .line 2647
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2648
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    .line 2649
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    .line 2650
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 2651
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    .line 2652
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 2653
    iput-boolean p7, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    .line 2654
    iput-boolean p8, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mIsClass0:Z

    .line 2655
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSubId:I

    .line 2656
    iput-wide p10, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mMessageId:J

    .line 2657
    iput-boolean p12, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    .line 2658
    iput-object p13, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mRemainingFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist onFilterComplete(I)V
    .registers 14

    .line 2663
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterComplete: result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_32

    .line 2670
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdropFilteredSms(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    return-void

    .line 2674
    :cond_32
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mRemainingFilters:Ljava/util/List;

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$smfilterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    .line 2682
    :cond_47
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_6f

    .line 2686
    iget-boolean p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    if-eqz p1, :cond_69

    .line 2687
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 2688
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    const-string v2, "onFilterComplete: dropping message as the sender is blocked"

    .line 2687
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 2689
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdropFilteredSms(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    goto :goto_6e

    .line 2692
    :cond_69
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :goto_6e
    return-void

    .line 2698
    :cond_6f
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    if-eqz v0, :cond_87

    .line 2699
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mIsClass0:Z

    iget v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSubId:I

    iget-wide v10, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mMessageId:J

    invoke-static/range {v3 .. v11}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdispatchSmsDeliveryIntent(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V

    goto :goto_a2

    .line 2706
    :cond_87
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$misSkipNotifyFlagSet(Lcom/android/internal/telephony/InboundSmsHandler;I)Z

    move-result p1

    if-nez p1, :cond_9d

    const-string p1, "InboundSmsHandler"

    const-string v0, "set mPendingSMSduringLockState"

    .line 2708
    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    sput-boolean v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPendingSMSduringLockState:Z

    .line 2711
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mshowNewMessageNotification(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 2713
    :cond_9d
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    :goto_a2
    return-void
.end method
