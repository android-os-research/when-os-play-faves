.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
.super Ljava/lang/Thread;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadUrlThread"
.end annotation


# instance fields
.field public hostname:Ljava/lang/String;

.field public interfaceName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public port:I

.field public profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 936
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 937
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->profileName:Ljava/lang/String;

    .line 938
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->hostname:Ljava/lang/String;

    .line 939
    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->path:Ljava/lang/String;

    .line 940
    iput p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->port:I

    .line 941
    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interfaceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    .line 957
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 8

    const-string v0, "KnoxVpnPacProcessor"

    .line 947
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->profileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->hostname:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->path:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->port:I

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interfaceName:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mdownloadPacUrl(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_2b

    :catch_12
    const-string p0, "Exception occured while trying to start the download thread to start downloading the pac url "

    .line 952
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :catch_18
    const-string v1, "Exception occured while downloading the pac url due to unknown format"

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$smgetDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->profileName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    return-void
.end method
