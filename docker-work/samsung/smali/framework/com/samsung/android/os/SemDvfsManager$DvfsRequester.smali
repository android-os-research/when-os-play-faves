.class Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DvfsRequester"
.end annotation


# instance fields
.field blacklist func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

.field final synthetic blacklist this$0:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager;Lcom/samsung/android/os/SemDvfsManager$RequestFunc;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/os/SemDvfsManager;
    .param p2, "requestFunc"    # Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    .line 890
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    .line 891
    iput-object p2, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    .line 892
    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 895
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_c

    .line 896
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->acquire(IILjava/lang/String;I[I)V

    .line 898
    :cond_c
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .registers 3
    .param p1, "hint"    # I

    .line 934
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_9

    .line 935
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkHintExist(I)Z

    move-result v0

    return v0

    .line 937
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .registers 3
    .param p1, "resource"    # I

    .line 941
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_9

    .line 942
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkResourceExist(I)Z

    move-result v0

    return v0

    .line 944
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .registers 3
    .param p1, "sysfsId"    # I

    .line 927
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_9

    .line 928
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->checkSysfsIdExist(I)Z

    move-result v0

    return v0

    .line 930
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .registers 4
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 907
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_9

    .line 908
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->getSupportedFrequency(II)[I

    move-result-object v0

    return-object v0

    .line 910
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist release(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 901
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_7

    .line 902
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->release(II)V

    .line 904
    :cond_7
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .registers 3
    .param p1, "sysfsId"    # I

    .line 920
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_9

    .line 921
    invoke-interface {v0, p1}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 923
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .registers 4
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;->func:Lcom/samsung/android/os/SemDvfsManager$RequestFunc;

    if-eqz v0, :cond_7

    .line 915
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/os/SemDvfsManager$RequestFunc;->sysfsWrite(ILjava/lang/String;)V

    .line 917
    :cond_7
    return-void
.end method
