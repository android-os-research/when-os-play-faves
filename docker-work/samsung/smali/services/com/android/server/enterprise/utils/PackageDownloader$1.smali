.class public Lcom/android/server/enterprise/utils/PackageDownloader$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 75
    iget-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$fgetmDownloadQueueIdMap(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_6d

    .line 76
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleNetworkState(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_6d

    :cond_1e
    const-string v0, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "edm.intent.action.sec.CHECK_REENROLLMENT"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_3d

    :cond_2f
    const-string p2, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 97
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleDownloadComplete(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_6d

    :cond_3d
    :goto_3d
    const-string/jumbo p1, "pkg"

    .line 83
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "url"

    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "targetPkgName"

    .line 85
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_64

    if-eqz v0, :cond_64

    if-nez p2, :cond_64

    .line 90
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleDownloadProcess(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :cond_64
    if-eqz v0, :cond_6d

    if-eqz p2, :cond_6d

    .line 94
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$1;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {p0, p2, v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleDownloadProcess(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method
