.class public Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReportData"
.end annotation


# instance fields
.field public data:[B

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method
