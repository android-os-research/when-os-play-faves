.class Lcom/android/internal/telephony/data/PhoneSwitcher$5;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6

    .line 432
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result p1

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims registered for slot2 tech changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v0

    aget v0, v0, v3

    if-eq p1, v0, :cond_48

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v0

    aput p1, v0, v3

    .line 436
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_48
    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    .line 442
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ims unregistered for slot2 tech changed to REGISTRATION_TECH_NONE from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object p1

    aget p1, p1, v2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3d

    .line 444
    iget-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmImsRegistrationTech(Lcom/android/internal/telephony/data/PhoneSwitcher;)[I

    move-result-object p1

    aput v0, p1, v2

    .line 445
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3d
    return-void
.end method
