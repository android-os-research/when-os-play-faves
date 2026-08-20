.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LDAPIntentReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "LDAPAccountPolicyService"

    const-string v0, "LDAPIntentReceiver: Received intent : ACTION_LDAP_CREATE_ACCT_RESULT_INTERNAL"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_30

    const-string p2, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 106
    iget-object p0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-static {p0, p2, v0, v1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->-$$Nest$msendBroadcastCreateLDAPAcctResultIntent(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V

    :cond_30
    return-void
.end method
