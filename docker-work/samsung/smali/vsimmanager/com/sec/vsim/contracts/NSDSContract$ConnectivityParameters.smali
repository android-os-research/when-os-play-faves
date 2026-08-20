.class public final Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParameters;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParamsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectivityParameters"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1398
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "connectivity_params"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParameters;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildConnectivityParamsUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "connectivityParamId"    # J

    .line 1405
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParameters;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
