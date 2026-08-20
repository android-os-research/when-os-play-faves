.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;
.super Lcom/android/server/knox/dar/sdp/SdpManagerInternal;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SdpLocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 4700
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method


# virtual methods
.method public getMasterKeyVersion(I)I
    .registers 2

    .line 4724
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)I

    move-result p0

    return p0
.end method

.method public setMasterKeyVersion(II)V
    .registers 3

    .line 4730
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$msetMasterKeyVersion(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;II)V

    return-void
.end method

.method public setSdpPolicy(I)Z
    .registers 2

    .line 4704
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmContext(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 4705
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setSdpPolicy(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "setSdpPolicy failed!"

    .line 4706
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public setSdpPolicyToPath(ILjava/lang/String;)Z
    .registers 3

    .line 4714
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmContext(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    .line 4715
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "SdpManagerImpl"

    const-string/jumbo p1, "setSdpPolicyToPath failed!"

    .line 4716
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public updateMasterKey([B[BI)Z
    .registers 4

    .line 4735
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpLocalService;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mrewrapSdpKeys(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;[B[BI)Z

    move-result p0

    return p0
.end method
