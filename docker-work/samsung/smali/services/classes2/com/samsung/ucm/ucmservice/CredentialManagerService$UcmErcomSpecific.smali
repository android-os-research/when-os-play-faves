.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UcmErcomSpecific"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UcmService_ercom"


# instance fields
.field public mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 3

    .line 5863
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5864
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    return-void
.end method


# virtual methods
.method public getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService_ercom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgetODEAgent(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5927
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v2, p1, p2, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$munwrapDek(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p2

    .line 5928
    iget v0, p2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-nez v0, :cond_35

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz v0, :cond_35

    array-length v2, v0

    if-nez v2, :cond_30

    goto :goto_35

    .line 5934
    :cond_30
    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    :cond_35
    :goto_35
    const-string p0, "getDekForVold. unwrapDek failed"

    .line 5929
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVoldInternalKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService_ercom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5905
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmIsFbeEnabled(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 p1, 0x0

    .line 5907
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v0

    .line 5908
    invoke-virtual {v0, p2}, Lcom/sec/esecomm/EsecommAdapter;->deriveCEKey([B)[B

    move-result-object p2

    if-nez p2, :cond_30

    const-string p1, "getDekForVoldInternalKey. deriveCEKey returns empty"

    .line 5911
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12

    .line 5915
    :cond_30
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgetResponseParcel(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0

    .line 5917
    :cond_37
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgetODEAgent(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5918
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$munwrapDek(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public getDeks(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService_ercom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5871
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgetODEAgent(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5874
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v2, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgenerateWrappedDek(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    .line 5875
    iget v2, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-eqz v2, :cond_2e

    .line 5876
    new-instance p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object p0

    .line 5878
    :cond_2e
    iget-object v0, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    const/16 v2, 0x12

    if-eqz v0, :cond_6a

    array-length v3, v0

    if-nez v3, :cond_38

    goto :goto_6a

    .line 5886
    :cond_38
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {v3, p1, v0, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$munwrapDek(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    .line 5887
    iget p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-eqz p1, :cond_4a

    .line 5888
    new-instance p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object p0

    .line 5890
    :cond_4a
    iget-object p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz p1, :cond_5f

    array-length p1, p1

    if-nez p1, :cond_52

    goto :goto_5f

    .line 5895
    :cond_52
    new-instance p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    .line 5896
    iput-object v0, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    .line 5897
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    iput-object p0, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    return-object p1

    :cond_5f
    :goto_5f
    const-string p0, "getDeks. unwrapDek return empty"

    .line 5891
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5892
    new-instance p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object p0

    :cond_6a
    :goto_6a
    const-string p0, "getDeks. generateWrappedDek return empty"

    .line 5879
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5880
    new-instance p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object p0
.end method
