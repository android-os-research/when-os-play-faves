.class public Lcom/android/server/enterprise/certificate/CertificatePolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V
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

    .line 1180
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1183
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mgetPackageName(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 1184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isMarketInstallation"

    const/4 v2, 0x0

    .line 1185
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p1, :cond_3e

    .line 1188
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 1190
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3e

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p2, :cond_3e

    .line 1192
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mdisplayAppSignature(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 1196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void
.end method
