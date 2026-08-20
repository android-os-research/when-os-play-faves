.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_1;
.super Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;
.source "SemSupplicantStaIfaceHalHidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SehSupplicantStaIfaceCallbackV3_1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V
    .registers 5

    .line 1479
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 1480
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    return-void
.end method
