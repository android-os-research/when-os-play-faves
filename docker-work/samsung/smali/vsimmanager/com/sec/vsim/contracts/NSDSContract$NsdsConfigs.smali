.class public final Lcom/sec/vsim/contracts/NSDSContract$NsdsConfigs;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$NsdsConfigColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NsdsConfigs"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARAM_ENTITLEMENT_URI:Ljava/lang/String; = "entitlement_url"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1565
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "nsds_configs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildNsdsConfigUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "rowId"    # J

    .line 1577
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
