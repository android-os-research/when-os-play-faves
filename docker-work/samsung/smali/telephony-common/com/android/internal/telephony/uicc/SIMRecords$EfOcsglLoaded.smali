.class Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfOcsglLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .registers 2

    .line 567
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_OCSGL"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 12

    .line 572
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 575
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_45

    .line 576
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x2

    .line 578
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x80

    if-ne v5, v6, :cond_42

    const/4 v5, 0x3

    .line 579
    aget-byte v7, v3, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0x81

    if-ne v8, v9, :cond_2d

    const/4 v7, 0x4

    .line 580
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    goto :goto_31

    :cond_2d
    and-int/lit16 v5, v7, 0xff

    add-int/lit8 v7, v5, 0x2

    :goto_31
    add-int/2addr v7, v4

    .line 587
    aget-byte v5, v3, v7

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v9, :cond_42

    add-int/lit8 v7, v7, 0x1

    .line 588
    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    if-le v3, v4, :cond_42

    add-int/lit8 v2, v2, 0x1

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_45
    if-lez v2, :cond_4d

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    goto :goto_51

    .line 598
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    .line 601
    :goto_51
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_OCSGL record count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method
