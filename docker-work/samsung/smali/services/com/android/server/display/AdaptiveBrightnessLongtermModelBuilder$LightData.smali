.class public Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightData"
.end annotation


# instance fields
.field public lux:F

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;-><init>()V

    return-void
.end method
