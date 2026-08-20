.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;
.super Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;
.source "SemSupplicantStaIfaceHalHidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SupplicantStaIfaceHalCallbackV1_2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V
    .registers 3

    .line 1455
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SupplicantStaIfaceHalCallbackV1_2;->this$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 1456
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackV1_2Impl;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    return-void
.end method
