.class public Lcom/android/server/enterprise/certificate/CertificatePolicy$4;
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

    .line 1364
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CertificatePolicy"

    .line 1368
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3c

    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 1369
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    const-string p2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 1370
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1371
    :cond_1b
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fputmBootCompleted(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)V

    .line 1372
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$fgetmBootReceiver(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1373
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mloadCache(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    .line 1374
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 p1, 0x3

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mexecuteRollbackRefresh(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V

    :cond_3c
    return-void
.end method
