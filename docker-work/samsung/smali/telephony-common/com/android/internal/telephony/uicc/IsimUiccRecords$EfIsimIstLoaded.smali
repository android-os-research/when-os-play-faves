.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;
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
    name = "EfIsimIstLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_ISIM_IST"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 7

    .line 266
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    .line 268
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    check-cast v0, [B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v4

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    invoke-static {v2, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmIsPcscfSupported(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Z)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_24

    move v2, v4

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmIsGbaSupported(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Z)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_35

    move v3, v4

    :cond_35
    invoke-static {v0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmIsSmoveripSupported(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Z)V

    .line 272
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmIsimIst(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$sfgetDUMP_RECORDS()Z

    move-result p1

    if-nez p1, :cond_64

    .line 275
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v0, "EF_IST=**"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v0, "mIsPcscfSupported=**"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v0, "mIsGbaSupported=**"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string p1, "mIsSmoveripSupported=**"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_d4

    .line 280
    :cond_64
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_IST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmIsimIst(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPcscfSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmIsPcscfSupported(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsGbaSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmIsGbaSupported(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSmoveripSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmIsSmoveripSupported(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    :goto_d4
    return-void
.end method
