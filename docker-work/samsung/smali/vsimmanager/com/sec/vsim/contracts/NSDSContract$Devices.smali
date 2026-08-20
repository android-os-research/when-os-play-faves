.class public final Lcom/sec/vsim/contracts/NSDSContract$Devices;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$DeviceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Devices"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/device"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/device"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEVICE_PUSH_TOKEN:Ljava/lang/String; = "device_push_token"

.field public static final OWN_ACTIVATION_STATUS:Ljava/lang/String; = "activation_status"

.field public static final OWN_LOGIN_STATUS:Ljava/lang/String; = "login_status"

.field public static final OWN_NSDS_SERVICE_STATUS:Ljava/lang/String; = "nsds_service_status"

.field public static final OWN_READY_STATUS:Ljava/lang/String; = "ready_status"

.field public static final QUERY_PARAM_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final QUERY_PARAM_IS_PRIMARY:Ljava/lang/String; = "is_primary"

.field public static final QUERY_PARAM_SERVICE_IDS:Ljava/lang/String; = "service_ids"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 804
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "devices"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildDeviceUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "deviceId"    # J

    .line 851
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildNsdsServiceStatusUri()Landroid/net/Uri;
    .registers 2

    .line 896
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "own_nsds_service_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildOwnActivationStatusUri()Landroid/net/Uri;
    .registers 2

    .line 875
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "own_activation_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildOwnDeviceReadyStatusUri()Landroid/net/Uri;
    .registers 2

    .line 889
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "own_ready_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildOwnLoginStatusUri()Landroid/net/Uri;
    .registers 2

    .line 882
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "own_login_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildServicesUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "deviceId"    # J

    .line 903
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "services"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildSetPrimaryUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "deviceId"    # J

    .line 859
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "set_primary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUpdateDeviceNameUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "deviceRowId"    # J

    .line 868
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "update_device_name"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
