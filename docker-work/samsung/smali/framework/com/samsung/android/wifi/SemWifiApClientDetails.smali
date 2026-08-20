.class public Lcom/samsung/android/wifi/SemWifiApClientDetails;
.super Ljava/lang/Object;
.source "SemWifiApClientDetails.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist isCellularStream:Z

.field protected blacklist isMhsDebug:Z

.field protected blacklist mClientActiveSessionMobileDataConsumed:J

.field protected blacklist mClientCurrentDayActiveSessionMobileDataUsage:J

.field protected blacklist mClientCurrentDayIntermediateTimeStamp:J

.field protected blacklist mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

.field protected blacklist mClientDataLimit:J

.field protected blacklist mClientIpAddress:Ljava/lang/String;

.field protected blacklist mClientIsConnected:Z

.field protected blacklist mClientIsDataPauseByTimeLimit:Z

.field protected blacklist mClientIsDataPausedFromUi:Z

.field private blacklist mClientMac:Ljava/lang/String;

.field protected blacklist mClientName:Ljava/lang/String;

.field protected blacklist mClientRecentConnectionTimeStamp:J

.field protected blacklist mClientTimeLimit:J

.field protected blacklist mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApClientDetails$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApClientDetails$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemWifiApClientDetails-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiApClientDetails;)V
    .registers 4
    .param p1, "clientDetails"    # Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    .line 66
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    .line 67
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    .line 68
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 70
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 71
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileDataConsumed:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileDataConsumed:J

    .line 72
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    .line 74
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    .line 75
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    .line 77
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 78
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    .line 79
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    .line 81
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZ)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "clientCurrentDayMobileDataUsageNotIncludeActiveSession"    # J
    .param p6, "clientTotalTimeOnCurrentDayNotIncludedActiveSession"    # J
    .param p8, "dataLimit"    # J
    .param p10, "timeLimit"    # J
    .param p12, "isConnected"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    .line 45
    iput-wide p8, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    .line 46
    iput-wide p10, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileDataConsumed:J

    .line 51
    iput-wide p4, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    .line 52
    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    .line 54
    iput-boolean p12, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 57
    iput-wide p6, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    .line 60
    return-void
.end method

.method private blacklist getClientTodayCounterTotalTime()J
    .registers 5

    .line 330
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 332
    :cond_10
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isMhsDebug:Z

    if-eqz v0, :cond_5

    .line 201
    return-object p1

    .line 203
    :cond_5
    if-nez p1, :cond_9

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_16

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_16
    return-object p1
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "input"    # Landroid/os/Parcel;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileDataConsumed:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    .line 157
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/samsung/android/wifi/SemWifiApClientDetails;)I
    .registers 6
    .param p1, "o"    # Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 127
    const/4 v0, -0x1

    return v0

    .line 128
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 129
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 11
    check-cast p1, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->compareTo(Lcom/samsung/android/wifi/SemWifiApClientDetails;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    if-ne p0, p1, :cond_4

    .line 115
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 120
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;

    .line 121
    .local v0, "other":Lcom/samsung/android/wifi/SemWifiApClientDetails;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 118
    .end local v0    # "other":Lcom/samsung/android/wifi/SemWifiApClientDetails;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClientActiveSessionMobileDataConsumed()J
    .registers 3

    .line 272
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileDataConsumed:J

    return-wide v0
.end method

.method public blacklist getClientDataLimit()J
    .registers 3

    .line 254
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    return-wide v0
.end method

.method public blacklist getClientDeviceName()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientIpAddress()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientMacAddress()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientRecentConnectionTimeStamp()J
    .registers 3

    .line 350
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    return-wide v0
.end method

.method public blacklist getClientTimeLimit()J
    .registers 3

    .line 263
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    return-wide v0
.end method

.method public blacklist getClientTodayTotalMobileDataUsage()J
    .registers 5

    .line 281
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getClientTodayTotalTime()J
    .registers 5

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayCounterTotalTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist isClientConnected()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    return v0
.end method

.method public blacklist isClientDataPauseByTimeLimit()Z
    .registers 5

    .line 312
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTimeLimit()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0
.end method

.method public blacklist isClientDataPausedByDataLimit()Z
    .registers 7

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 300
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 301
    :cond_19
    return v1
.end method

.method public blacklist isClientDataPausedByUser()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    return v0
.end method

.method public blacklist isClientInternetPaused()Z
    .registers 2

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByDataLimit()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPauseByTimeLimit()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiApClientDetails{deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mac="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    .line 164
    invoke-direct {p0, v2}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dataLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", timeLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isConnected=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Recent Connection timestamp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isDataPausedFromUi=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isDataPausedByTimeLimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', activeSessionDataConsumed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientActiveSessionMobileDataConsumed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", todayDataConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalMobileDataUsage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', todaySessionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientTodayTotalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientDataLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTimeLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPausedFromUi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientIsDataPauseByTimeLimit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientActiveSessionMobileDataConsumed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayMobileDataUsageNotIncludeActiveSession:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayActiveSessionMobileDataUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientCurrentDayIntermediateTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientTotalTimeOnCurrentDayNotIncludedActiveCounter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->mClientRecentConnectionTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isCellularStream:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    return-void
.end method
