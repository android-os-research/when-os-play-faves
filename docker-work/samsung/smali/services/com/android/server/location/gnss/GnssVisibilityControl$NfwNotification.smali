.class public Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfwNotification"
.end annotation


# static fields
.field public static final NFW_RESPONSE_TYPE_ACCEPTED_LOCATION_PROVIDED:B = 0x2t

.field public static final NFW_RESPONSE_TYPE_ACCEPTED_NO_LOCATION_PROVIDED:B = 0x1t

.field public static final NFW_RESPONSE_TYPE_REJECTED:B


# instance fields
.field public final mInEmergencyMode:Z

.field public final mIsCachedLocation:Z

.field public final mOtherProtocolStackName:Ljava/lang/String;

.field public final mProtocolStack:B

.field public final mProxyAppPackageName:Ljava/lang/String;

.field public final mRequestor:B

.field public final mRequestorId:Ljava/lang/String;

.field public final mResponseType:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInEmergencyMode(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCachedLocation(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOtherProtocolStackName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProtocolStack(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B
    .registers 1

    iget-byte p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProxyAppPackageName(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestor(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B
    .registers 1

    iget-byte p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestorId(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResponseType(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B
    .registers 1

    iget-byte p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetResponseTypeAsString(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misEmergencyRequestNotification(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isEmergencyRequestNotification()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLocationProvided(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isLocationProvided()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misRequestAccepted(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAccepted()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misRequestAttributedToProxyApp(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 9

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    .line 313
    iput-byte p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 314
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    .line 315
    iput-byte p4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    .line 316
    iput-object p5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    .line 317
    iput-byte p6, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    .line 318
    iput-boolean p7, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    .line 319
    iput-boolean p8, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method


# virtual methods
.method public final getResponseTypeAsString()Ljava/lang/String;
    .registers 2

    .line 333
    iget-byte p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const-string p0, "<Unknown>"

    return-object p0

    :cond_d
    const-string p0, "ACCEPTED_LOCATION_PROVIDED"

    return-object p0

    :cond_10
    const-string p0, "ACCEPTED_NO_LOCATION_PROVIDED"

    return-object p0

    :cond_13
    const-string p0, "REJECTED"

    return-object p0
.end method

.method public final isEmergencyRequestNotification()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isLocationProvided()Z
    .registers 2

    .line 350
    iget-byte p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isRequestAccepted()Z
    .registers 1

    .line 346
    iget-byte p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isRequestAttributedToProxyApp()Z
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 324
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 328
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 329
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    const-string/jumbo p0, "{proxyAppPackageName: %s, protocolStack: %d, otherProtocolStackName: %s, requestor: %d, requestorId: %s, responseType: %s, inEmergencyMode: %b, isCachedLocation: %b}"

    .line 324
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
