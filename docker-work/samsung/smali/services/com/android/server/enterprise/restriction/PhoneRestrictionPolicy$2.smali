.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsReceiver, intent received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PhoneRestrictionPolicy"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_41

    if-nez v0, :cond_23

    goto :goto_41

    :cond_23
    const-string p2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    const-string/jumbo p2, "response_status"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3b

    const-string/jumbo p0, "rcs message sent fail case, return"

    .line 325
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_3b
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$msendRcsBroadcast(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_41
    :goto_41
    const-string p0, "No data arrived at mRcsReceiver"

    .line 319
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
