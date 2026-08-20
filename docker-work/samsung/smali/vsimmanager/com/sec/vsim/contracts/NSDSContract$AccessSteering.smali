.class public final Lcom/sec/vsim/contracts/NSDSContract$AccessSteering;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$AccessSteeringColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessSteering"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARAM_DEVICE_INFO:Ljava/lang/String; = "device_info"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1653
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "access_steering"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$AccessSteering;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAccessSteeringUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "steeringRowId"    # J

    .line 1665
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$AccessSteering;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
