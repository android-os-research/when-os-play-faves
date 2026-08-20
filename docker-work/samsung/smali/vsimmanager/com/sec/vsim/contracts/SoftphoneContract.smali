.class public Lcom/sec/vsim/contracts/SoftphoneContract;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/contracts/SoftphoneContract$SoftphoneAddress;,
        Lcom/sec/vsim/contracts/SoftphoneContract$SoftphoneAccount;,
        Lcom/sec/vsim/contracts/SoftphoneContract$AddressColumns;,
        Lcom/sec/vsim/contracts/SoftphoneContract$AccountColumns;,
        Lcom/sec/vsim/contracts/SoftphoneContract$CommonColumns;,
        Lcom/sec/vsim/contracts/SoftphoneContract$AkaChallenge;,
        Lcom/sec/vsim/contracts/SoftphoneContract$SoftphoneRegistrationFailure;,
        Lcom/sec/vsim/contracts/SoftphoneContract$CallForwardingConditions;,
        Lcom/sec/vsim/contracts/SoftphoneContract$SoftphoneEnvironment;,
        Lcom/sec/vsim/contracts/SoftphoneContract$SoftphoneRequests;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.vsim.attsoftphone.settings"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final PACKAGE_CONTEXT:Ljava/lang/String; = "com.sec.imsservice"

.field public static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.internal.ims.entitlement.softphone.SoftphoneService"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-string v0, "content://com.sec.vsim.attsoftphone.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/SoftphoneContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
