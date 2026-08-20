.class public interface abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface$getBridgedInstancesCallback;
.super Ljava/lang/Object;
.source "IWifiApIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiApIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getBridgedInstancesCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
