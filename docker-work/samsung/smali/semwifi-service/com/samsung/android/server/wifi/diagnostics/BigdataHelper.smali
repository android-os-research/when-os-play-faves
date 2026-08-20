.class public Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.super Ljava/lang/Object;
.source "BigdataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc4Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;,
        Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
    }
.end annotation


# static fields
.field static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final BSSID_DEFAULT:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final IP_DEFAULT:Ljava/lang/String; = "0.0.0.0"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final OUI_DEFAULT:Ljava/lang/String; = "00:00:00"

.field static final PDC1_FEATURE_NAME:Ljava/lang/String; = "PDC1"

.field static final PDC2_FEATURE_NAME:Ljava/lang/String; = "PDC2"

.field static final PDC3_FEATURE_NAME:Ljava/lang/String; = "PDC3"

.field static final PDC4_FEATURE_NAME:Ljava/lang/String; = "PDC4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_11

    const-string v0, "\\s+"

    const-string v1, ""

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object p0

    :cond_11
    return-object p1
.end method
