.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;
.super Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;
.source "SemSupplicantStaIfaceHalHidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SupplicantStaIfaceHalCallbackV1_3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V
    .registers 4

    .line 1461
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_3;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 1462
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->-$$Nest$fgetmWifiMonitor(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_3Impl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    return-void
.end method
