.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimCdmaHomeLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_CSIM_CDMAHOME"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 8

    .line 676
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM_CDMAHOME data size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 681
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 685
    array-length v4, v2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_33

    .line 686
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const/4 v4, 0x3

    .line 687
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 693
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 694
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 696
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmHomeSystemId(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    .line 697
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmHomeNetworkId(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    return-void
.end method
