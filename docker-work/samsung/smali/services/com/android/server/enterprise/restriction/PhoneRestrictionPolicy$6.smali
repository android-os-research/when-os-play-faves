.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;
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

    .line 2885
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 2888
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhoneRestrictionPolicy"

    .line 2889
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    .line 2890
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2891
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_35

    :cond_1a
    const-string p1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 2893
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 2894
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    :cond_2a
    const-string p1, "Received ACTION_SUBINFO_RECORD_UPDATED broadcast"

    .line 2895
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$munlockAllSimCards(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    goto :goto_3e

    .line 2892
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$msetLockedIccIdsSystemUI(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    :cond_3e
    :goto_3e
    return-void
.end method
