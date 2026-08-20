.class public final Lcom/sec/vsim/contracts/NSDSContract$Lines;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$LineColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lines"
.end annotation


# static fields
.field public static final CONCRETE_ID:Ljava/lang/String; = "lines._id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/line"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/line"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARAM_LINE_NAME:Ljava/lang/String; = "lineName"

.field public static final QUERY_PARAM_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final QUERY_PARAM_SERVICE_IDS:Ljava/lang/String; = "service_ids"

.field public static final QUERY_PARAM_SERVICE_NAMES:Ljava/lang/String; = "service_names"

.field public static final QUERY_PARAM_TRN_DEST_MSISDNS:Ljava/lang/String; = "dest_msisdns"

.field public static final QUERY_PARAM_TRN_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field public static final STATUS_ACTIVE:I = 0x1

.field public static final STATUS_INACTIVE:I = 0x0

.field public static final STATUS_NOT_REGISTERED:I = 0x0

.field public static final STATUS_READY_FOR_USE:I = 0x2

.field public static final STATUS_REGISTERED:I = 0x1

.field public static final TRN:Ljava/lang/String; = "trn"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 526
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildActivateLineUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 686
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildActivateServicesUri(JJ)Landroid/net/Uri;
    .registers 7
    .param p0, "deviceId"    # J
    .param p2, "lineId"    # J

    .line 771
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 772
    .local v0, "deviceIdUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lines/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "acitvate_services"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildActiveLinesUri()Landroid/net/Uri;
    .registers 2

    .line 585
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "active_lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 586
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildActiveLinesUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "deviceUid"    # Ljava/lang/String;

    .line 576
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "active_lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 577
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "device_uid"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 578
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildActiveLinesWithServicveUri()Landroid/net/Uri;
    .registers 2

    .line 634
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "active_lines_with_services"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 635
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildActiveLinesWithServicveUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "deviceUid"    # Ljava/lang/String;

    .line 625
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "active_lines_with_services"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 626
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "device_uid"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 627
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildAddServicesUri(JJ)Landroid/net/Uri;
    .registers 7
    .param p0, "deviceId"    # J
    .param p2, "lineId"    # J

    .line 753
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 754
    .local v0, "deviceIdUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lines/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "add_services"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildAllLinesForCurrentAccountUri()Landroid/net/Uri;
    .registers 2

    .line 611
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "all_lines_in_current_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildAllLinesUri()Landroid/net/Uri;
    .registers 2

    .line 618
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "all_lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDeActivateLineUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 702
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDeactivateServicesUri(JJ)Landroid/net/Uri;
    .registers 7
    .param p0, "deviceId"    # J
    .param p2, "lineId"    # J

    .line 780
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 781
    .local v0, "deviceIdUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lines/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "deacitvate_services"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildDevicesUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 658
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "devices"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDisableCabUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 718
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "disable_cab"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildEnableCabUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 710
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "enable_cab"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildGetTrnUri(JLjava/lang/String;)Landroid/net/Uri;
    .registers 6
    .param p0, "lineId"    # J
    .param p2, "destMsisdn"    # Ljava/lang/String;

    .line 666
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "get_trn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 667
    .local v0, "trnUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dest_msisdns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildGetTrnUri(JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .param p0, "lineId"    # J
    .param p2, "destMsisdn"    # Ljava/lang/String;
    .param p3, "networkType"    # Ljava/lang/String;

    .line 675
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "get_trn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 676
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "dest_msisdns"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 677
    const-string v1, "network_type"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 678
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildInactiveLinesWithServicveUri()Landroid/net/Uri;
    .registers 2

    .line 642
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "inactive_lines_with_services"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLineUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "lineId"    # J

    .line 650
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLinesUri()Landroid/net/Uri;
    .registers 2

    .line 603
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 604
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "deviceUid"    # Ljava/lang/String;

    .line 594
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 595
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "device_uid"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 596
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildRefreshSitUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "msisdn"    # Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "refresh_sit"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 735
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "msisdn"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 736
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildRemoveServicesUri(JJ)Landroid/net/Uri;
    .registers 7
    .param p0, "deviceId"    # J
    .param p2, "lineId"    # J

    .line 762
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 763
    .local v0, "deviceIdUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lines/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "remove_services"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildReprovisionLineUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 694
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "reprovision"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildServicesUri(JJ)Landroid/net/Uri;
    .registers 7
    .param p0, "deviceId"    # J
    .param p2, "lineId"    # J

    .line 744
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 745
    .local v0, "deviceIdUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lines/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "services"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildUpdateLineNameUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "lineId"    # J

    .line 726
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "update_line_name"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
