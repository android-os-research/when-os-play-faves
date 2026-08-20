.class public final Lcom/sec/vsim/app/jansky/JanskyContract$ProvisioningParameters;
.super Ljava/lang/Object;
.source "JanskyContract.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/JanskyContract$CommonColumns;
.implements Lcom/sec/vsim/app/jansky/JanskyContract$ProvisioningParametersColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/JanskyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisioningParameters"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/provisioning_parameter"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/provisioning_parameter"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 901
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "provisioning_params"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$ProvisioningParameters;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProvisioningParametersUri(J)Landroid/net/Uri;
    .registers 3
    .param p0, "provisionParamId"    # J

    .line 908
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$ProvisioningParameters;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
