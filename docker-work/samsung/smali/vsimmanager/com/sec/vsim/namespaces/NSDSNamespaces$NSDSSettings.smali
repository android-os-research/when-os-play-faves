.class public final Lcom/sec/vsim/namespaces/NSDSNamespaces$NSDSSettings;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSSettings"
.end annotation


# static fields
.field public static final DEVICE_GROUP:Ljava/lang/String; = "Samsung-NSDS"

.field public static final DEVICE_GROUP_20:Ljava/lang/String; = "Samsung-NSDS-CM-2.0"

.field public static final DEVICE_GROUP_LAB:Ljava/lang/String; = "Samsung-NSDS-CM-2.0-Staging"

.field public static final IAM_LOGOUT_URL:Ljava/lang/String; = "https://account.t-mobile.com/oauth2/v1/signout"

.field public static final IAM_QUERY_PARAM:Ljava/lang/String; = "token"

.field public static final INIT_CLIENT_SECRET:Ljava/lang/String; = ""

.field public static final IS_SIM_DEVICE:Z = true

.field public static final OAUTH_GRANT_TYPE:Ljava/lang/String; = "authorization_code"

.field public static final OAUTH_SCOPE:Ljava/lang/String; = "SES_GENERIC_DEVICE_CONNECTIVITY_SCOPE"

.field public static final OS:Ljava/lang/String; = "Android"

.field public static final RETRY_COUNT_FOR_SERVER_ERROR:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "conn-mgr"

.field public static final SERVICE_VERSION:Ljava/lang/String; = "2.0"

.field public static final USE_AKA_AUTH:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
