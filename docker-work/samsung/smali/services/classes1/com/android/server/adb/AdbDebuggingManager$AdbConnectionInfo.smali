.class public Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdbConnectionInfo"
.end annotation


# instance fields
.field public mBssid:Ljava/lang/String;

.field public mPort:I

.field public mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 592
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 593
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 594
    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .registers 3

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 604
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 605
    iget p1, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    iput p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 599
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const-string v0, ""

    .line 625
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 627
    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method

.method public getBSSID()Ljava/lang/String;
    .registers 1

    .line 609
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .registers 1

    .line 617
    iget p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return p0
.end method

.method public getSSID()Ljava/lang/String;
    .registers 1

    .line 613
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)V
    .registers 2

    .line 621
    iput p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return-void
.end method
