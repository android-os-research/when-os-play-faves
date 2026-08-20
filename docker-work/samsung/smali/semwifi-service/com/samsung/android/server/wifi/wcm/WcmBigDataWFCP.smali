.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "WcmBigDataWFCP.java"


# static fields
.field public static final KEY_CP_AUTO:Ljava/lang/String; = "CAut"

.field public static final KEY_CP_CONNECTION_DURATION:Ljava/lang/String; = "CDur"

.field public static final KEY_CP_DETECTION:Ljava/lang/String; = "CDet"

.field public static final KEY_CP_OPTION:Ljava/lang/String; = "COpt"

.field public static final KEY_CP_OUI:Ljava/lang/String; = "COui"

.field public static final KEY_CP_PAGE_COUNT:Ljava/lang/String; = "CPag"

.field public static final KEY_CP_REDIRECT_URL:Ljava/lang/String; = "CRed"

.field public static final KEY_CP_RESULT:Ljava/lang/String; = "CRes"

.field public static final KEY_CP_SECURE_TYPE:Ljava/lang/String; = "CSec"

.field public static final KEY_CP_UNAUTHENTICATED_DURATION:Ljava/lang/String; = "CUna"

.field private static final KEY_CP_VERSION:Ljava/lang/String; = "CVer"

.field public static final KEY_CP_WEBVIEW:Ljava/lang/String; = "CWeb"

.field private static final WFCP:[[Ljava/lang/String;


# instance fields
.field public mAuto:Ljava/lang/String;

.field public mConnectionDuration:J

.field public mCpDetection:I

.field public mCpOption:I

.field public mCpResult:I

.field public mOui:Ljava/lang/String;

.field public mPageCount:I

.field public mRedirectedUrl:Ljava/lang/String;

.field public mSecurityType:I

.field public mUnauthenticatedDuration:J

.field public mWebview:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "CVer"

    const-string v2, "20210908"

    .line 32
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CDet"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "CRes"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "CWeb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "CAut"

    const-string v3, ""

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "COpt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "CPag"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "CRed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "CUna"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "CDur"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "CSec"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "COui"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->WFCP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .registers 4

    const-string v0, "CVer"

    const-string v1, "20210908"

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpDetection:I

    const-string v1, "CDet"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 73
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpResult:I

    const-string v1, "CRes"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 74
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mWebview:I

    const-string v1, "CWeb"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mAuto:Ljava/lang/String;

    const-string v1, "CAut"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpOption:I

    const-string v1, "COpt"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 77
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mPageCount:I

    const-string v1, "CPag"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mRedirectedUrl:Ljava/lang/String;

    const-string v1, "CRed"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mUnauthenticatedDuration:J

    const-string v2, "CUna"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 80
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mConnectionDuration:J

    const-string v2, "CDur"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 81
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mSecurityType:I

    const-string v1, "CSec"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mOui:Ljava/lang/String;

    const-string v1, "COui"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->WFCP:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJsonFormat - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .registers 5

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpDetection:I

    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpResult:I

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mWebview:I

    const-string v1, ""

    .line 59
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mAuto:Ljava/lang/String;

    .line 60
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpOption:I

    const/4 v2, 0x0

    .line 61
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mPageCount:I

    const-string v2, " "

    .line 62
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mRedirectedUrl:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 63
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mUnauthenticatedDuration:J

    .line 64
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mConnectionDuration:J

    .line 65
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mSecurityType:I

    .line 66
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mOui:Ljava/lang/String;

    return-void
.end method
