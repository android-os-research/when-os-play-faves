.class public final Lcom/sec/vsim/contracts/NSDSContract$PendingLines;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$PendingLinesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingLines"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARAM_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final QUERY_PARAM_TMO_ID:Ljava/lang/String; = "user_id"

.field public static final QUERY_PARAM_TMO_PW:Ljava/lang/String; = "user_pw"

.field public static final STATUS_APPROVED:I = 0x2

.field public static final STATUS_PENDING:I = 0x0

.field public static final STATUS_REJECTED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 457
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "pending_lines"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$PendingLines;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildCancelMsisdnAuthUri()Landroid/net/Uri;
    .registers 2

    .line 514
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$PendingLines;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cancel_msisdn_auth"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildCreateTmoIdUri()Landroid/net/Uri;
    .registers 2

    .line 499
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$PendingLines;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "create_tmoid"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildPendingLineUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "pendingLineId"    # J

    .line 507
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$PendingLines;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildRequestMsisdnAuthUri()Landroid/net/Uri;
    .registers 2

    .line 492
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$PendingLines;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "request_msisdn_auth"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildRequestMsisdnLoginUri()Landroid/net/Uri;
    .registers 2

    .line 485
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$PendingLines;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "request_msisdn_login"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
