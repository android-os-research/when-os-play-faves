.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;
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
    name = "EfIsimDomainLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_ISIM_DOMAIN"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 4

    .line 255
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$smisimTlvToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fputmIsimDomain(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$sfgetDUMP_RECORDS()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_DOMAIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->-$$Nest$fgetmIsimDomain(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method
