.class public final Lcom/sec/vsim/contracts/NSDSContract$DeviceConfig;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$DeviceConfigColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceConfig"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ELEMENT:Ljava/lang/String; = "element"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "element_name"

.field public static final ELEMENT_VLAUE:Ljava/lang/String; = "element_value"

.field public static final QUERY_PARAM_TAG_NAME:Ljava/lang/String; = "tag_name"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1449
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "device_config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildDeviceConfigElementUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "xPathSelection"    # Ljava/lang/String;

    .line 1463
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "element"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1464
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "tag_name"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1465
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildDeviceConfigUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "rowId"    # J

    .line 1455
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
