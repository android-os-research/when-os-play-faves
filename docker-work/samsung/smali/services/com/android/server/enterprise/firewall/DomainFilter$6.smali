.class public Lcom/android/server/enterprise/firewall/DomainFilter$6;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;->exemptCaptivePortalHostname(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public final synthetic val$network:Landroid/net/Network;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .registers 3

    .line 395
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->val$network:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mgetCaptivePortalCheckUrl(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_12

    .line 401
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Captive portal url is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 v1, 0x0

    .line 406
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->val$network:Landroid/net/Network;

    invoke-virtual {v2, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_66
    .catchall {:try_start_13 .. :try_end_1b} :catchall_64

    const/4 v1, 0x0

    .line 408
    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v2, 0x2710

    .line 409
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 410
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 411
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Location"

    .line 413
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 422
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mextractHost(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$misIpAddress(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 427
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$maddHostToCaptivePortalWhitelist(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V

    goto :goto_5a

    .line 429
    :cond_50
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "invalid captive portal host"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_5a} :catch_61
    .catchall {:try_start_1c .. :try_end_5a} :catchall_5e

    .line 435
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_88

    :catchall_5e
    move-exception p0

    move-object v1, v0

    goto :goto_89

    :catch_61
    move-exception p0

    move-object v1, v0

    goto :goto_67

    :catchall_64
    move-exception p0

    goto :goto_89

    :catch_66
    move-exception p0

    .line 433
    :goto_67
    :try_start_67
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_67 .. :try_end_83} :catchall_64

    if-eqz v1, :cond_88

    .line 435
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_88
    :goto_88
    return-void

    :goto_89
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 436
    :cond_8e
    throw p0
.end method
