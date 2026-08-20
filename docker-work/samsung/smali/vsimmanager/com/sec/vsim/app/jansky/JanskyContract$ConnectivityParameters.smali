.class public final Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParameters;
.super Ljava/lang/Object;
.source "JanskyContract.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/JanskyContract$CommonColumns;
.implements Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParamsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/JanskyContract;
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

    .line 1029
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "connectivity_params"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParameters;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildConnectivityParamsUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "connectivityParamId"    # J

    .line 1036
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParameters;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
