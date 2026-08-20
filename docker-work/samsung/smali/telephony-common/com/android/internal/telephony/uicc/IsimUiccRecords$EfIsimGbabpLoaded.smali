.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimGbabpLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_ISIM_GBABP"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 7

    const-string v0, "UTF-8"

    .line 628
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [B

    .line 631
    :try_start_7
    check-cast p1, [B

    const/4 v1, 0x0

    .line 633
    aget-byte v2, p1, v1

    .line 635
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-array v4, v2, [B

    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmRand(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)V

    .line 636
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmRand(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x1

    .line 639
    aget-byte v2, p1, v4

    .line 640
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v1, v2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmBtid(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 643
    aget-byte v1, p1, v1

    .line 644
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmKeyLifetime(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$sfgetDUMP_RECORDS()Z

    move-result p1

    if-nez p1, :cond_58

    .line 647
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v0, "mRand=**"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 648
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v0, "mBtid=**"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v0, "mKeyLifetime=**"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_d8

    .line 651
    :cond_58
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmRand(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBtid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmBtid(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 653
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyLifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmKeyLifetime(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b0} :catch_b1

    goto :goto_d8

    :catch_b1
    move-exception p1

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse GBABP contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmRand(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)V

    .line 658
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmBtid(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V

    .line 659
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmKeyLifetime(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V

    :goto_d8
    return-void
.end method
