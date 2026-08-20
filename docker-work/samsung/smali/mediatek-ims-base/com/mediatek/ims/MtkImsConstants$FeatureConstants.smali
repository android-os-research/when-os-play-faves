.class public Lcom/mediatek/ims/MtkImsConstants$FeatureConstants;
.super Ljava/lang/Object;
.source "MtkImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureConstants"
.end annotation


# static fields
.field public static final blacklist FEATURE_TYPE_CALLCOMPOSER_OVER_LTE:I = 0x9

.field public static final blacklist FEATURE_TYPE_CALLCOMPOSER_OVER_NR:I = 0xb

.field public static final blacklist FEATURE_TYPE_CALLCOMPOSER_OVER_WIFI:I = 0xa

.field public static final blacklist FEATURE_TYPE_VIDEO_OVER_NR:I = 0x7

.field public static final blacklist FEATURE_TYPE_VOICE_CROSS_SIM:I = 0x8

.field public static final blacklist FEATURE_TYPE_VOICE_OVER_NR:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
