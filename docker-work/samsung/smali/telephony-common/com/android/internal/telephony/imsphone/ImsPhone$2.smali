.class Lcom/android/internal/telephony/imsphone/ImsPhone$2;
.super Lcom/android/ims/ImsEcbmStateListener;
.source "ImsPhone.java"


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
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 2414
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0, p2}, Lcom/android/ims/ImsEcbmStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onECBMEntered(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 2421
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onECBMEntered"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onECBMExited(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 2440
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onECBMExited"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-$$Nest$miLog(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
