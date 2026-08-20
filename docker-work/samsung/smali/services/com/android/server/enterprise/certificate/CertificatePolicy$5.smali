.class public Lcom/android/server/enterprise/certificate/CertificatePolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 2

    .line 1379
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1382
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_65

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.user_handle"

    .line 1384
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 1386
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1387
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$monUserSwitched(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    goto :goto_65

    :cond_1b
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1388
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_65

    .line 1390
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$monUserRemoved(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    goto :goto_65

    :cond_2b
    const-string v0, "android.intent.action.USER_ADDED"

    .line 1392
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1395
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mgetPersonaManagerAdapter(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_65

    const-string p1, "CertificatePolicy"

    const-string p2, "Reloading cache for new user"

    .line 1396
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mloadCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    goto :goto_65

    :cond_4c
    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 1399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1401
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object p1

    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-eq p1, v0, :cond_65

    .line 1403
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyUserKeystoreUnlocked(I)V

    :cond_65
    :goto_65
    return-void
.end method
