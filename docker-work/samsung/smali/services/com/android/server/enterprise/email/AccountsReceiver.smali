.class public Lcom/android/server/enterprise/email/AccountsReceiver;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "AccountsReceiver"

.field public static mSmimeCerticateList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/email/AccountSMIMECertificate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContext:Landroid/content/Context;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendClientAuthResultIntent(Lcom/android/server/enterprise/email/AccountsReceiver;JII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/AccountsReceiver;->sendClientAuthResultIntent(JII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/AccountsReceiver$1;-><init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 69
    :try_start_c
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    .line 70
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    .line 71
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    .line 72
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    .line 73
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    .line 74
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_3f

    :catch_36
    move-exception p0

    .line 78
    sget-object p1, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "register Account Receiver : failed. "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-void
.end method

.method public static getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .registers 3

    .line 223
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 224
    sget-object v1, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object p0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSMIMECertificate() success."

    invoke-static {p0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_20

    :catch_16
    move-exception p0

    .line 227
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSMIMECertificate() failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public static pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z
    .registers 3

    .line 210
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object p0, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "pushSMIMECertificate() success"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    const/4 p0, 0x1

    return p0

    :catch_f
    move-exception p0

    .line 213
    sget-object p1, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "pushSMIMECertificate() failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final sendClientAuthResultIntent(JII)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_1d

    .line 283
    sget-object p3, Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendClientAuthResultIntent() : invalid accountId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1d
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.knox.intent.extra.STATUS"

    .line 286
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    iget-object p0, p0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
