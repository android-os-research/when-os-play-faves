.class Lcom/samsung/android/os/SemDvfsManager$2;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"

# interfaces
.implements Lcom/samsung/android/os/SemDvfsManager$RequestFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemDvfsManager;->createRequester(Z)Lcom/samsung/android/os/SemDvfsManager$DvfsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/os/SemDvfsManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/os/SemDvfsManager;

    .line 1012
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquire(IILjava/lang/String;I[I)V
    .registers 13
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "hint"    # I
    .param p5, "list"    # [I

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/CustomFrequencyManager;->acquire(IILjava/lang/String;I[I)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1019
    goto :goto_13

    .line 1017
    :catch_f
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1020
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_13
    return-void
.end method

.method public blacklist checkHintExist(I)Z
    .registers 3
    .param p1, "hint"    # I

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->checkHintExist(I)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1073
    :catch_b
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1076
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkResourceExist(I)Z
    .registers 3
    .param p1, "resource"    # I

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->checkResourceExist(I)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1083
    :catch_b
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1086
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkSysfsIdExist(I)Z
    .registers 3
    .param p1, "sysfsId"    # I

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->checkSysfsIdExist(I)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 1064
    :catch_b
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1067
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedFrequency(II)[I
    .registers 4
    .param p1, "type"    # I
    .param p2, "level"    # I

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CustomFrequencyManager;->getSupportedFrequency(II)[I

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1035
    :catch_b
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1038
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist release(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "token"    # I

    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CustomFrequencyManager;->release(II)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1028
    goto :goto_e

    .line 1026
    :catch_a
    move-exception v0

    .line 1027
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1029
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_e
    return-void
.end method

.method public blacklist sysfsRead(I)Ljava/lang/String;
    .registers 3
    .param p1, "sysfsId"    # I

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/CustomFrequencyManager;->readSysfs(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1054
    :catch_b
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1057
    .end local v0    # "e":Ljava/lang/NullPointerException;
    const-string v0, ""

    return-object v0
.end method

.method public blacklist sysfsWrite(ILjava/lang/String;)V
    .registers 4
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager$2;->this$0:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {v0}, Lcom/samsung/android/os/SemDvfsManager;->-$$Nest$fgetmCustomFreqManager(Lcom/samsung/android/os/SemDvfsManager;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CustomFrequencyManager;->writeSysfs(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1047
    goto :goto_e

    .line 1045
    :catch_a
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1048
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_e
    return-void
.end method
