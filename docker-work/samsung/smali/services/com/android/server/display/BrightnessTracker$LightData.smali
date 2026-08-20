.class public Lcom/android/server/display/BrightnessTracker$LightData;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
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

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker$LightData-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>()V

    return-void
.end method
