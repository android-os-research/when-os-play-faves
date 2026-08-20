.class Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;
.super Ljava/lang/Object;
.source "SemRoamingAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field private cachedFrequency:I

.field private lastUpdatedTime:J

.field private final networkKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcachedFrequency(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->cachedFrequency:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastUpdatedTime(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->lastUpdatedTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->networkKey:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->networkKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateConnectionInfo(IJ)V
    .registers 4

    .line 129
    iput p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->cachedFrequency:I

    .line 130
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->lastUpdatedTime:J

    return-void
.end method
