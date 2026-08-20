.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1123
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .registers 7

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    if-eq p2, v2, :cond_15

    if-eq p2, v1, :cond_18

    if-eq p2, v0, :cond_12

    if-eq p2, p3, :cond_10

    move p3, v2

    goto :goto_18

    :cond_10
    const/4 p3, 0x7

    goto :goto_18

    :cond_12
    const/16 p3, 0x9

    goto :goto_18

    :cond_15
    move p3, v0

    goto :goto_18

    :cond_17
    move p3, v1

    .line 1148
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$monDataEnabledChanged(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ZI)V

    return-void
.end method
