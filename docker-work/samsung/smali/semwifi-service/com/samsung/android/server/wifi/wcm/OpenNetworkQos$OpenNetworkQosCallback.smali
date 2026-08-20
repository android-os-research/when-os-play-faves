.class public Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;
.super Ljava/lang/Object;
.source "OpenNetworkQos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenNetworkQosCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoInternetStatusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onQualityScoreChanged()V
    .registers 1

    return-void
.end method
