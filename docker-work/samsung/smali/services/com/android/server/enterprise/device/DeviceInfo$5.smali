.class public Lcom/android/server/enterprise/device/DeviceInfo$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .line 1917
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 1922
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 1926
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1927
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "DeviceInfo"

    if-eqz p1, :cond_ad

    if-nez p2, :cond_1a

    goto/16 :goto_ad

    :cond_1a
    const-string v1, "com.samsung.mms.RECEIVED_MSG"

    .line 1935
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p1, 0x1

    goto :goto_2d

    :cond_24
    const-string v1, "com.samsung.mms.SENT_MSG"

    .line 1937
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x0

    :goto_2d
    const-string/jumbo v0, "msg_type"

    .line 1944
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms"

    .line 1945
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string/jumbo v0, "msg_address"

    .line 1947
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    .line 1948
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string/jumbo v3, "msg_subject"

    .line 1949
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "msg_body"

    .line 1950
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_location"

    .line 1951
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    const-string v7, ""

    if-nez p2, :cond_6b

    move-object p2, v7

    goto :goto_7a

    :cond_6b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_7a
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_81

    move-object p2, v7

    goto :goto_90

    .line 1954
    :cond_81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_90
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_96

    move-object v4, v7

    :cond_96
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1955
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$5;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a6
    return-void

    :cond_a7
    const-string p0, "Unexpected intent arrived at mMessagingReceiver"

    .line 1940
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ad
    :goto_ad
    const-string p0, "No data arrived at mMessagingReceiver"

    .line 1930
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
