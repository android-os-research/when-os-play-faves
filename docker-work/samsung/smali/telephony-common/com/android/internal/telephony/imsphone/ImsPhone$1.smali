.class Lcom/android/internal/telephony/imsphone/ImsPhone$1;
.super Ljava/lang/Object;
.source "ImsPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_9

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    :cond_9
    return-void
.end method
