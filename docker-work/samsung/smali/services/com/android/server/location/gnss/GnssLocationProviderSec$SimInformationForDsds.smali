.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;
.super Ljava/lang/Object;
.source "GnssLocationProviderSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProviderSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimInformationForDsds"
.end annotation


# instance fields
.field public mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPhone:Landroid/telephony/TelephonyManager;

.field public mSimOperator:Ljava/lang/String;

.field public mSubId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;Landroid/telephony/TelephonyManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            ")V"
        }
    .end annotation

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSubId:I

    .line 1433
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSimOperator:Ljava/lang/String;

    .line 1434
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mConfigMap:Ljava/util/HashMap;

    .line 1435
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getPhoneFromSimInfo()Landroid/telephony/TelephonyManager;
    .registers 1

    .line 1426
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    return-object p0
.end method
