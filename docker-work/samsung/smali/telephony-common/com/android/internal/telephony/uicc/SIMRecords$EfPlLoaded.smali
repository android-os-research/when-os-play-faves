.class Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;
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
    name = "EfPlLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .registers 2

    .line 2390
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_PL"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 4

    .line 2396
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 2397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_PL="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method
