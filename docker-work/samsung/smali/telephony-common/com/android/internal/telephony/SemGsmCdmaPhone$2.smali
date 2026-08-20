.class Lcom/android/internal/telephony/SemGsmCdmaPhone$2;
.super Ljava/lang/Object;
.source "SemGsmCdmaPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemGsmCdmaPhone;->fetchFdnList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V
    .registers 2

    .line 1465
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    const-string v1, "fetchFdnList()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    const/16 v2, 0x6f3b

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInPB(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fputmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/util/List;)V

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_26

    .line 1470
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    const-string v0, "mFdnRecords is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mloge(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    goto :goto_6b

    .line 1472
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    const-string v1, "FDN updated"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mloge(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1473
    :goto_2e
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 1474
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$fgetmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1475
    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/SemGsmCdmaPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchFdnList: FDN["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_6b
    :goto_6b
    return-void
.end method
