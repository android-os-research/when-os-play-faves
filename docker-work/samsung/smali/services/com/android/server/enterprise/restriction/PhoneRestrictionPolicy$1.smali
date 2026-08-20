.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;
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

    .line 294
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    const-string v0, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 299
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 302
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    :cond_18
    return-void
.end method
