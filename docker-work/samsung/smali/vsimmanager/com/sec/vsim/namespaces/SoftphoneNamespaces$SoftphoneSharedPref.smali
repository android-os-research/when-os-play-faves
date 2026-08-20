.class public final Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneSharedPref;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/SoftphoneNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftphoneSharedPref"
.end annotation


# static fields
.field public static final LAST_SMS_TIME:Ljava/lang/String; = "sms_time"

.field public static final PREF_ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final PREF_FQDN:Ljava/lang/String; = "fqdn"

.field public static final PREF_IMPU:Ljava/lang/String; = "impu"

.field public static final PREF_PD_COOKIES:Ljava/lang/String; = "pd_cookies"

.field public static final PREF_TGUARD_APPID:Ljava/lang/String; = "tguard_appid"

.field public static final PREF_TGUARD_TOKEN:Ljava/lang/String; = "tguard_token"

.field public static final SHARED_PREF_NAME:Ljava/lang/String; = "softphone"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
