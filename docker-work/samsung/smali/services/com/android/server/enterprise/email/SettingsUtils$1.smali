.class public Lcom/android/server/enterprise/email/SettingsUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$condition:Landroid/os/ConditionVariable;

.field public final synthetic val$ret:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 3

    .line 655
    iput-object p1, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string p1, "eas_account"

    .line 659
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "com.samsung.android.knox.intent.extra.ACCOUNT_EAS_INTERNAL"

    .line 661
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e
    const-string/jumbo v0, "user_passwd_id"

    const-wide/16 v1, -0x1

    .line 663
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    .line 664
    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string/jumbo v0, "outgoing_user_passwd_id"

    .line 665
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    .line 666
    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_55

    const-string v5, "eas"

    .line 668
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 670
    iget-object v0, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 671
    iget-object p1, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v0, p1, p2

    goto :goto_87

    .line 674
    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    iget-object v3, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "O#"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 677
    iget-object v0, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$ret:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    .line 679
    :goto_87
    iget-object p0, p0, Lcom/android/server/enterprise/email/SettingsUtils$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
