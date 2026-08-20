.class Lcom/android/internal/telephony/SemServiceStateTracker$2;
.super Landroid/database/ContentObserver;
.source "SemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/os/Handler;)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3

    .line 196
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    const-string v0, "LGT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$misNrNotSupported(Lcom/android/internal/telephony/SemServiceStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string v0, "onChange - Lte Roaming Mode is changed"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$monChangeLteRoamingMode(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    :cond_26
    return-void
.end method
