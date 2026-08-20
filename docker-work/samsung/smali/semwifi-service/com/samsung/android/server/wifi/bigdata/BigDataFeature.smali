.class public Lcom/samsung/android/server/wifi/bigdata/BigDataFeature;
.super Ljava/lang/Object;
.source "BigDataFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/BigDataFeature$Factory;
    }
.end annotation


# static fields
.field public static final FEATURE_24HR:Ljava/lang/String; = "W24H"

.field public static final FEATURE_ASSOC:Ljava/lang/String; = "ASSO"

.field public static final FEATURE_DISC:Ljava/lang/String; = "DISC"

.field public static final FEATURE_HANG:Ljava/lang/String; = "HANG"

.field public static final FEATURE_MHS_DISCONNECTION:Ljava/lang/String; = "MHDC"

.field public static final FEATURE_MHS_INFO:Ljava/lang/String; = "MHSI"

.field public static final FEATURE_MHS_ON_OF:Ljava/lang/String; = "MHOF"

.field public static final FEATURE_MHS_POWER_SAVE_MODE:Ljava/lang/String; = "MHPS"

.field public static final FEATURE_MHS_POWER_SAVE_MODE_TIME:Ljava/lang/String; = "MHPT"

.field public static final FEATURE_MHS_SETTING:Ljava/lang/String; = "MHSS"

.field public static final FEATURE_ON_OFF:Ljava/lang/String; = "ONOF"

.field public static final FEATURE_PATTERN_DISC1:Ljava/lang/String; = "PDC1"

.field public static final FEATURE_PATTERN_DISC2:Ljava/lang/String; = "PDC2"

.field public static final FEATURE_PATTERN_DISC4:Ljava/lang/String; = "PDC4"

.field public static final FEATURE_RAPP:Ljava/lang/String; = "RAPP"


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string v0, "do not create"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
