.class public final Lcom/sec/vsim/contracts/NSDSContract$Accounts;
.super Ljava/lang/Object;
.source "NSDSContract.java"

# interfaces
.implements Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;
.implements Lcom/sec/vsim/contracts/NSDSContract$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/NSDSContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/account"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/account"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 980
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildAccountUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "accountId"    # J

    .line 987
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildActivateSIMDeviceUri()Landroid/net/Uri;
    .registers 2

    .line 1033
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "activate_sim_device"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildCreateAccountPageUri()Landroid/net/Uri;
    .registers 2

    .line 1008
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "open_tmo_create_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDisableActiveAccountUri()Landroid/net/Uri;
    .registers 2

    .line 1025
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "disable_active_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1026
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildDisableActiveAccountUri(J)Landroid/net/Uri;
    .registers 5
    .param p0, "accountId"    # J

    .line 1016
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "disable_active_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1017
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1018
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final buildDowmloadAllContactsUri()Landroid/net/Uri;
    .registers 2

    .line 1047
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "download_all_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLoginPageUri()Landroid/net/Uri;
    .registers 2

    .line 1001
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "open_login_page"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLogoutUri()Landroid/net/Uri;
    .registers 2

    .line 994
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUploadAllContactsUri()Landroid/net/Uri;
    .registers 2

    .line 1040
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "upload_all_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUploadUpdatedContactUri()Landroid/net/Uri;
    .registers 2

    .line 1054
    sget-object v0, Lcom/sec/vsim/contracts/NSDSContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "upload_updated_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
